{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "b46937b3",
   "metadata": {
    "papermill": {
     "duration": 0.013295,
     "end_time": "2025-08-14T02:40:45.159743",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.146448",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ca2fe17d",
   "metadata": {
    "papermill": {
     "duration": 0.012871,
     "end_time": "2025-08-14T02:40:45.187043",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.174172",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Google Junior Data Analyst – Yawmel Jihad S. Guialal\n",
    "\n",
    "### Case Study Overview (User_ID 16943138076127685703)\n",
    "\n",
    "This case study serves as my 1st capstone project for the Google Data Analytics Professional Certificate.\n",
    "\n",
    "As Cyclistic is a fictional company, I am using Divvy bicycle-sharing service trip data as a proxy for this analysis.\n",
    "\n",
    "* The Divvy program, managed by Lyft Bikes and Scooters in Chicago, provides publicly available system data under a formal license agreement.\n",
    "\n",
    "* These datasets are credible—they are reliable, original, comprehensive, current, and properly cited.\n",
    "\n",
    "* To protect rider privacy, no personally identifiable information (PII) is included in the datasets.\n",
    "\n",
    "For this analysis:\n",
    "\n",
    "* I used 2019 Q1 and 2020 Q1 Divvy datasets.\n",
    "\n",
    "* The datasets were downloaded, securely uploaded into this Kaggle notebook, and processed entirely within Kaggle for an added layer of security.\n",
    "\n",
    "* Kaggle’s R kernel is used for all data cleaning, analysis, and visualization."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5f729ae2",
   "metadata": {
    "papermill": {
     "duration": 0.012109,
     "end_time": "2025-08-14T02:40:45.211637",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.199528",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Business Objective\n",
    "Context\n",
    "Lily Moreno, the Director of Marketing and my direct manager, believes that increasing the number of annual members is critical for Cyclistic’s long-term success.\n",
    "\n",
    "Rather than focusing solely on acquiring entirely new customers, she sees an opportunity in converting existing casual riders into annual members. These riders are already familiar with the service, making them promising candidates for membership conversion."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0c2f0a1",
   "metadata": {
    "papermill": {
     "duration": 0.012557,
     "end_time": "2025-08-14T02:40:45.236642",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.224085",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Team’s Primary Goal\n",
    "Develop effective marketing strategies that will encourage casual riders to become annual members."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cea48fc2",
   "metadata": {
    "papermill": {
     "duration": 0.0123,
     "end_time": "2025-08-14T02:40:45.261327",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.249027",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Focus Area\n",
    "To achieve this goal, our team identified three key business questions:\n",
    "\n",
    "* How do annual members and casual riders use Cyclistic bikes differently?\n",
    "\n",
    "* Why would casual riders consider purchasing annual memberships?\n",
    "\n",
    "* How can Cyclistic use digital media to influence casual riders?\n",
    "\n",
    "I was tasked with focusing on the first question:\n",
    "\n",
    "Analyze Cyclistic's historical bike trip data to uncover trends and key differences in usage between annual members and casual riders.\n",
    "\n",
    "The insights generated from this analysis will inform targeted marketing strategies designed to increase annual membership subscriptions."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bf47ccfe",
   "metadata": {
    "papermill": {
     "duration": 0.012311,
     "end_time": "2025-08-14T02:40:45.285784",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.273473",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data Sources\n",
    "As Cyclistic is a fictional company, I am using Divvy bicycle-sharing service trip data as a proxy for this analysis.\n",
    "\n",
    "* mThe Divvy program, managed by Lyft Bikes and Scooters in Chicago, provides publicly available system data under a formal license agreement.\n",
    "\n",
    "* These datasets are credible—they are reliable, original, comprehensive, current, and properly cited.\n",
    "\n",
    "* To protect rider privacy, no personally identifiable information (PII) is included in the datasets.\n",
    "\n",
    "For this analysis:\n",
    "\n",
    "* I used 2019 Q1 and 2020 Q1 Divvy datasets.\n",
    "\n",
    "* The datasets were downloaded, securely uploaded into this Kaggle notebook, and processed entirely within Kaggle for an added layer of security.\n",
    "\n",
    "* Kaggle’s R kernel is used for all data cleaning, analysis, and visualization."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "76d5ba45",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:45.313458Z",
     "iopub.status.busy": "2025-08-14T02:40:45.311809Z",
     "iopub.status.idle": "2025-08-14T02:40:45.451560Z",
     "shell.execute_reply": "2025-08-14T02:40:45.450081Z"
    },
    "papermill": {
     "duration": 0.155386,
     "end_time": "2025-08-14T02:40:45.453382",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.297996",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "## Key Question:\n",
    "#How do annual members and casual riders use Cyclistic bikes differently?\n",
    "\n",
    "#The findings from this analysis will guide data-driven marketing strategies to encourage membership conversions."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "0d0a794a",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:45.501626Z",
     "iopub.status.busy": "2025-08-14T02:40:45.479635Z",
     "iopub.status.idle": "2025-08-14T02:40:46.490522Z",
     "shell.execute_reply": "2025-08-14T02:40:46.489434Z"
    },
    "papermill": {
     "duration": 1.026567,
     "end_time": "2025-08-14T02:40:46.492350",
     "exception": false,
     "start_time": "2025-08-14T02:40:45.465783",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'divvy-trips-data'"
      ],
      "text/latex": [
       "'divvy-trips-data'"
      ],
      "text/markdown": [
       "'divvy-trips-data'"
      ],
      "text/plain": [
       "[1] \"divvy-trips-data\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Yawmel Jihad Guialal - Google Data Analytics Final Capstone # 1\n",
    "\n",
    "\n",
    "# This R environment comes with many helpful analytics packages installed\n",
    "# It is defined by the kaggle/rstats Docker image: https://github.com/kaggle/docker-rstats\n",
    "# For example, here's a helpful package to load\n",
    "\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "library(readxl) # metapackage of all readxl \n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "list.files(path = \"../input\")\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ca9e183b",
   "metadata": {
    "papermill": {
     "duration": 0.012005,
     "end_time": "2025-08-14T02:40:46.516746",
     "exception": false,
     "start_time": "2025-08-14T02:40:46.504741",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Load Dataset as dataframes in this notebook"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "8aafd73e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:46.543452Z",
     "iopub.status.busy": "2025-08-14T02:40:46.542354Z",
     "iopub.status.idle": "2025-08-14T02:40:56.239256Z",
     "shell.execute_reply": "2025-08-14T02:40:56.237933Z"
    },
    "papermill": {
     "duration": 9.712023,
     "end_time": "2025-08-14T02:40:56.240908",
     "exception": false,
     "start_time": "2025-08-14T02:40:46.528885",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Input files from the localhost pc from this notebook as read only....\n",
    "df2019 <- read_xlsx(\"/kaggle/input/divvy-trips-data/Divvy_Trips_2019_Q1.xlsx\")\n",
    "df2020 <- read_xlsx(\"/kaggle/input/divvy-trips-data/Divvy_Trips_2020_Q1.xlsx\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "7aa23e17",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.297731Z",
     "iopub.status.busy": "2025-08-14T02:40:56.296564Z",
     "iopub.status.idle": "2025-08-14T02:40:56.311662Z",
     "shell.execute_reply": "2025-08-14T02:40:56.310485Z"
    },
    "papermill": {
     "duration": 0.031233,
     "end_time": "2025-08-14T02:40:56.313244",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.282011",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'bikeid'</li><li>'tripduration'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li><li>'gender'</li><li>'birthyear'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'bikeid'\n",
       "\\item 'tripduration'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\item 'gender'\n",
       "\\item 'birthyear'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'bikeid'\n",
       "5. 'tripduration'\n",
       "6. 'from_station_id'\n",
       "7. 'from_station_name'\n",
       "8. 'to_station_id'\n",
       "9. 'to_station_name'\n",
       "10. 'usertype'\n",
       "11. 'gender'\n",
       "12. 'birthyear'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       " [4] \"bikeid\"            \"tripduration\"      \"from_station_id\"  \n",
       " [7] \"from_station_name\" \"to_station_id\"     \"to_station_name\"  \n",
       "[10] \"usertype\"          \"gender\"            \"birthyear\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Return list of attribute in both the dataset:\n",
    "colnames(df2019)\n",
    "colnames(df2020)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "fd89be91",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.342100Z",
     "iopub.status.busy": "2025-08-14T02:40:56.340903Z",
     "iopub.status.idle": "2025-08-14T02:40:56.393187Z",
     "shell.execute_reply": "2025-08-14T02:40:56.391996Z"
    },
    "papermill": {
     "duration": 0.069198,
     "end_time": "2025-08-14T02:40:56.395505",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.326307",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 12</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>trip_id</th><th scope=col>start_time</th><th scope=col>end_time</th><th scope=col>bikeid</th><th scope=col>tripduration</th><th scope=col>from_station_id</th><th scope=col>from_station_name</th><th scope=col>to_station_id</th><th scope=col>to_station_name</th><th scope=col>usertype</th><th scope=col>gender</th><th scope=col>birthyear</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>21742443</td><td>2019-01-01 00:04:37</td><td>2019-01-01 00:11:07</td><td>2167</td><td> 390</td><td>199</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave             </span></td><td> 84</td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Grand Ave     </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1989</td></tr>\n",
       "\t<tr><td>21742444</td><td>2019-01-01 00:08:13</td><td>2019-01-01 00:15:34</td><td>4386</td><td> 441</td><td> 44</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St             </span></td><td>624</td><td>Dearborn St &amp; Van Buren St (*)</td><td>Subscriber</td><td>Female</td><td>1990</td></tr>\n",
       "\t<tr><td>21742445</td><td>2019-01-01 00:13:23</td><td>2019-01-01 00:27:12</td><td>1524</td><td> 829</td><td> 15</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 18th St               </span></td><td>644</td><td>Western Ave &amp; Fillmore St (*) </td><td>Subscriber</td><td>Female</td><td>1994</td></tr>\n",
       "\t<tr><td>21742446</td><td>2019-01-01 00:13:45</td><td>2019-01-01 00:43:28</td><td> 252</td><td>1783</td><td>123</td><td><span style=white-space:pre-wrap>California Ave &amp; Milwaukee Ave     </span></td><td>176</td><td><span style=white-space:pre-wrap>Clark St &amp; Elm St             </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1993</td></tr>\n",
       "\t<tr><td>21742447</td><td>2019-01-01 00:14:52</td><td>2019-01-01 00:20:56</td><td>1170</td><td> 364</td><td>173</td><td>Mies van der Rohe Way &amp; Chicago Ave</td><td> 35</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave       </span></td><td>Subscriber</td><td><span style=white-space:pre-wrap>Male  </span></td><td>1994</td></tr>\n",
       "\t<tr><td>21742448</td><td>2019-01-01 00:15:33</td><td>2019-01-01 00:19:09</td><td>2437</td><td> 216</td><td> 98</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Washington St         </span></td><td> 49</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St       </span></td><td>Subscriber</td><td>Female</td><td>1983</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 12\n",
       "\\begin{tabular}{llllllllllll}\n",
       " trip\\_id & start\\_time & end\\_time & bikeid & tripduration & from\\_station\\_id & from\\_station\\_name & to\\_station\\_id & to\\_station\\_name & usertype & gender & birthyear\\\\\n",
       " <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 21742443 & 2019-01-01 00:04:37 & 2019-01-01 00:11:07 & 2167 &  390 & 199 & Wabash Ave \\& Grand Ave              &  84 & Milwaukee Ave \\& Grand Ave      & Subscriber & Male   & 1989\\\\\n",
       "\t 21742444 & 2019-01-01 00:08:13 & 2019-01-01 00:15:34 & 4386 &  441 &  44 & State St \\& Randolph St              & 624 & Dearborn St \\& Van Buren St (*) & Subscriber & Female & 1990\\\\\n",
       "\t 21742445 & 2019-01-01 00:13:23 & 2019-01-01 00:27:12 & 1524 &  829 &  15 & Racine Ave \\& 18th St                & 644 & Western Ave \\& Fillmore St (*)  & Subscriber & Female & 1994\\\\\n",
       "\t 21742446 & 2019-01-01 00:13:45 & 2019-01-01 00:43:28 &  252 & 1783 & 123 & California Ave \\& Milwaukee Ave      & 176 & Clark St \\& Elm St              & Subscriber & Male   & 1993\\\\\n",
       "\t 21742447 & 2019-01-01 00:14:52 & 2019-01-01 00:20:56 & 1170 &  364 & 173 & Mies van der Rohe Way \\& Chicago Ave &  35 & Streeter Dr \\& Grand Ave        & Subscriber & Male   & 1994\\\\\n",
       "\t 21742448 & 2019-01-01 00:15:33 & 2019-01-01 00:19:09 & 2437 &  216 &  98 & LaSalle St \\& Washington St          &  49 & Dearborn St \\& Monroe St        & Subscriber & Female & 1983\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 12\n",
       "\n",
       "| trip_id &lt;dbl&gt; | start_time &lt;dttm&gt; | end_time &lt;dttm&gt; | bikeid &lt;dbl&gt; | tripduration &lt;dbl&gt; | from_station_id &lt;dbl&gt; | from_station_name &lt;chr&gt; | to_station_id &lt;dbl&gt; | to_station_name &lt;chr&gt; | usertype &lt;chr&gt; | gender &lt;chr&gt; | birthyear &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 21742443 | 2019-01-01 00:04:37 | 2019-01-01 00:11:07 | 2167 |  390 | 199 | Wabash Ave &amp; Grand Ave              |  84 | Milwaukee Ave &amp; Grand Ave      | Subscriber | Male   | 1989 |\n",
       "| 21742444 | 2019-01-01 00:08:13 | 2019-01-01 00:15:34 | 4386 |  441 |  44 | State St &amp; Randolph St              | 624 | Dearborn St &amp; Van Buren St (*) | Subscriber | Female | 1990 |\n",
       "| 21742445 | 2019-01-01 00:13:23 | 2019-01-01 00:27:12 | 1524 |  829 |  15 | Racine Ave &amp; 18th St                | 644 | Western Ave &amp; Fillmore St (*)  | Subscriber | Female | 1994 |\n",
       "| 21742446 | 2019-01-01 00:13:45 | 2019-01-01 00:43:28 |  252 | 1783 | 123 | California Ave &amp; Milwaukee Ave      | 176 | Clark St &amp; Elm St              | Subscriber | Male   | 1993 |\n",
       "| 21742447 | 2019-01-01 00:14:52 | 2019-01-01 00:20:56 | 1170 |  364 | 173 | Mies van der Rohe Way &amp; Chicago Ave |  35 | Streeter Dr &amp; Grand Ave        | Subscriber | Male   | 1994 |\n",
       "| 21742448 | 2019-01-01 00:15:33 | 2019-01-01 00:19:09 | 2437 |  216 |  98 | LaSalle St &amp; Washington St          |  49 | Dearborn St &amp; Monroe St        | Subscriber | Female | 1983 |\n",
       "\n"
      ],
      "text/plain": [
       "  trip_id  start_time          end_time            bikeid tripduration\n",
       "1 21742443 2019-01-01 00:04:37 2019-01-01 00:11:07 2167    390        \n",
       "2 21742444 2019-01-01 00:08:13 2019-01-01 00:15:34 4386    441        \n",
       "3 21742445 2019-01-01 00:13:23 2019-01-01 00:27:12 1524    829        \n",
       "4 21742446 2019-01-01 00:13:45 2019-01-01 00:43:28  252   1783        \n",
       "5 21742447 2019-01-01 00:14:52 2019-01-01 00:20:56 1170    364        \n",
       "6 21742448 2019-01-01 00:15:33 2019-01-01 00:19:09 2437    216        \n",
       "  from_station_id from_station_name                   to_station_id\n",
       "1 199             Wabash Ave & Grand Ave               84          \n",
       "2  44             State St & Randolph St              624          \n",
       "3  15             Racine Ave & 18th St                644          \n",
       "4 123             California Ave & Milwaukee Ave      176          \n",
       "5 173             Mies van der Rohe Way & Chicago Ave  35          \n",
       "6  98             LaSalle St & Washington St           49          \n",
       "  to_station_name                usertype   gender birthyear\n",
       "1 Milwaukee Ave & Grand Ave      Subscriber Male   1989     \n",
       "2 Dearborn St & Van Buren St (*) Subscriber Female 1990     \n",
       "3 Western Ave & Fillmore St (*)  Subscriber Female 1994     \n",
       "4 Clark St & Elm St              Subscriber Male   1993     \n",
       "5 Streeter Dr & Grand Ave        Subscriber Male   1994     \n",
       "6 Dearborn St & Monroe St        Subscriber Female 1983     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>EACB19130B0CDA4A</td><td>docked_bike</td><td>2020-01-21 20:06:59</td><td>2020-01-21 20:14:30</td><td>Western Ave &amp; Leland Ave</td><td>239</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave         </span></td><td>326</td><td>41.9665</td><td>-87.6884</td><td>41.9671</td><td>-87.6674</td><td>member</td></tr>\n",
       "\t<tr><td>8FED874C809DC021</td><td>docked_bike</td><td>2020-01-30 14:22:39</td><td>2020-01-30 14:26:22</td><td>Clark St &amp; Montrose Ave </td><td>234</td><td>Southport Ave &amp; Irving Park Rd</td><td>318</td><td>41.9616</td><td>-87.6660</td><td>41.9542</td><td>-87.6644</td><td>member</td></tr>\n",
       "\t<tr><td>789F3C21E472CA96</td><td>docked_bike</td><td>2020-01-09 19:29:26</td><td>2020-01-09 19:32:17</td><td><span style=white-space:pre-wrap>Broadway &amp; Belmont Ave  </span></td><td>296</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave      </span></td><td>117</td><td>41.9401</td><td>-87.6455</td><td>41.9402</td><td>-87.6530</td><td>member</td></tr>\n",
       "\t<tr><td>C9A388DAC6ABF313</td><td>docked_bike</td><td>2020-01-06 16:17:07</td><td>2020-01-06 16:25:56</td><td><span style=white-space:pre-wrap>Clark St &amp; Randolph St  </span></td><td> 51</td><td><span style=white-space:pre-wrap>Fairbanks Ct &amp; Grand Ave      </span></td><td> 24</td><td>41.8846</td><td>-87.6319</td><td>41.8918</td><td>-87.6206</td><td>member</td></tr>\n",
       "\t<tr><td>943BC3CBECCFD662</td><td>docked_bike</td><td>2020-01-30 08:37:16</td><td>2020-01-30 08:42:48</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St    </span></td><td> 66</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St         </span></td><td>212</td><td>41.8856</td><td>-87.6418</td><td>41.8899</td><td>-87.6343</td><td>member</td></tr>\n",
       "\t<tr><td>6D9C8A6938165C11</td><td>docked_bike</td><td>2020-01-10 12:33:05</td><td>2020-01-10 12:37:54</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St   </span></td><td>212</td><td><span style=white-space:pre-wrap>Desplaines St &amp; Randolph St   </span></td><td> 96</td><td>41.8899</td><td>-87.6343</td><td>41.8846</td><td>-87.6446</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 13\n",
       "\\begin{tabular}{lllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       " <chr> & <chr> & <dttm> & <dttm> & <chr> & <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t EACB19130B0CDA4A & docked\\_bike & 2020-01-21 20:06:59 & 2020-01-21 20:14:30 & Western Ave \\& Leland Ave & 239 & Clark St \\& Leland Ave          & 326 & 41.9665 & -87.6884 & 41.9671 & -87.6674 & member\\\\\n",
       "\t 8FED874C809DC021 & docked\\_bike & 2020-01-30 14:22:39 & 2020-01-30 14:26:22 & Clark St \\& Montrose Ave  & 234 & Southport Ave \\& Irving Park Rd & 318 & 41.9616 & -87.6660 & 41.9542 & -87.6644 & member\\\\\n",
       "\t 789F3C21E472CA96 & docked\\_bike & 2020-01-09 19:29:26 & 2020-01-09 19:32:17 & Broadway \\& Belmont Ave   & 296 & Wilton Ave \\& Belmont Ave       & 117 & 41.9401 & -87.6455 & 41.9402 & -87.6530 & member\\\\\n",
       "\t C9A388DAC6ABF313 & docked\\_bike & 2020-01-06 16:17:07 & 2020-01-06 16:25:56 & Clark St \\& Randolph St   &  51 & Fairbanks Ct \\& Grand Ave       &  24 & 41.8846 & -87.6319 & 41.8918 & -87.6206 & member\\\\\n",
       "\t 943BC3CBECCFD662 & docked\\_bike & 2020-01-30 08:37:16 & 2020-01-30 08:42:48 & Clinton St \\& Lake St     &  66 & Wells St \\& Hubbard St          & 212 & 41.8856 & -87.6418 & 41.8899 & -87.6343 & member\\\\\n",
       "\t 6D9C8A6938165C11 & docked\\_bike & 2020-01-10 12:33:05 & 2020-01-10 12:37:54 & Wells St \\& Hubbard St    & 212 & Desplaines St \\& Randolph St    &  96 & 41.8899 & -87.6343 & 41.8846 & -87.6446 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 13\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| EACB19130B0CDA4A | docked_bike | 2020-01-21 20:06:59 | 2020-01-21 20:14:30 | Western Ave &amp; Leland Ave | 239 | Clark St &amp; Leland Ave          | 326 | 41.9665 | -87.6884 | 41.9671 | -87.6674 | member |\n",
       "| 8FED874C809DC021 | docked_bike | 2020-01-30 14:22:39 | 2020-01-30 14:26:22 | Clark St &amp; Montrose Ave  | 234 | Southport Ave &amp; Irving Park Rd | 318 | 41.9616 | -87.6660 | 41.9542 | -87.6644 | member |\n",
       "| 789F3C21E472CA96 | docked_bike | 2020-01-09 19:29:26 | 2020-01-09 19:32:17 | Broadway &amp; Belmont Ave   | 296 | Wilton Ave &amp; Belmont Ave       | 117 | 41.9401 | -87.6455 | 41.9402 | -87.6530 | member |\n",
       "| C9A388DAC6ABF313 | docked_bike | 2020-01-06 16:17:07 | 2020-01-06 16:25:56 | Clark St &amp; Randolph St   |  51 | Fairbanks Ct &amp; Grand Ave       |  24 | 41.8846 | -87.6319 | 41.8918 | -87.6206 | member |\n",
       "| 943BC3CBECCFD662 | docked_bike | 2020-01-30 08:37:16 | 2020-01-30 08:42:48 | Clinton St &amp; Lake St     |  66 | Wells St &amp; Hubbard St          | 212 | 41.8856 | -87.6418 | 41.8899 | -87.6343 | member |\n",
       "| 6D9C8A6938165C11 | docked_bike | 2020-01-10 12:33:05 | 2020-01-10 12:37:54 | Wells St &amp; Hubbard St    | 212 | Desplaines St &amp; Randolph St    |  96 | 41.8899 | -87.6343 | 41.8846 | -87.6446 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 EACB19130B0CDA4A docked_bike   2020-01-21 20:06:59 2020-01-21 20:14:30\n",
       "2 8FED874C809DC021 docked_bike   2020-01-30 14:22:39 2020-01-30 14:26:22\n",
       "3 789F3C21E472CA96 docked_bike   2020-01-09 19:29:26 2020-01-09 19:32:17\n",
       "4 C9A388DAC6ABF313 docked_bike   2020-01-06 16:17:07 2020-01-06 16:25:56\n",
       "5 943BC3CBECCFD662 docked_bike   2020-01-30 08:37:16 2020-01-30 08:42:48\n",
       "6 6D9C8A6938165C11 docked_bike   2020-01-10 12:33:05 2020-01-10 12:37:54\n",
       "  start_station_name       start_station_id end_station_name              \n",
       "1 Western Ave & Leland Ave 239              Clark St & Leland Ave         \n",
       "2 Clark St & Montrose Ave  234              Southport Ave & Irving Park Rd\n",
       "3 Broadway & Belmont Ave   296              Wilton Ave & Belmont Ave      \n",
       "4 Clark St & Randolph St    51              Fairbanks Ct & Grand Ave      \n",
       "5 Clinton St & Lake St      66              Wells St & Hubbard St         \n",
       "6 Wells St & Hubbard St    212              Desplaines St & Randolph St   \n",
       "  end_station_id start_lat start_lng end_lat end_lng  member_casual\n",
       "1 326            41.9665   -87.6884  41.9671 -87.6674 member       \n",
       "2 318            41.9616   -87.6660  41.9542 -87.6644 member       \n",
       "3 117            41.9401   -87.6455  41.9402 -87.6530 member       \n",
       "4  24            41.8846   -87.6319  41.8918 -87.6206 member       \n",
       "5 212            41.8856   -87.6418  41.8899 -87.6343 member       \n",
       "6  96            41.8899   -87.6343  41.8846 -87.6446 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Let's check the first six row of both the dataset [Divvy_Trips_2019_A1, Divvy_Trips_2020_Q1]\n",
    "head(df2019)\n",
    "head(df2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "62c2c6d1",
   "metadata": {
    "papermill": {
     "duration": 0.013139,
     "end_time": "2025-08-14T02:40:56.422334",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.409195",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "At first glance at the attributes of both datasets, we can observe that they do not match."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "fc24e437",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.451442Z",
     "iopub.status.busy": "2025-08-14T02:40:56.450162Z",
     "iopub.status.idle": "2025-08-14T02:40:56.492749Z",
     "shell.execute_reply": "2025-08-14T02:40:56.491246Z"
    },
    "papermill": {
     "duration": 0.058873,
     "end_time": "2025-08-14T02:40:56.494465",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.435592",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# We will create a display_dimensions function to understand the dimension of the data, also we will add some concatenated string to state clarity\n",
    "\n",
    "display_dimensions <- function(df, df_name) {\n",
    "  dimensions <- dim(df)  # get number of rows and columns\n",
    "  cat(\"The\", df_name, \"dataframe has\", dimensions[1], \n",
    "      \"rows and\", dimensions[2], \"columns:\",\n",
    "      paste(colnames(df), collapse = \", \"), \"\\n\")\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7be70767",
   "metadata": {
    "papermill": {
     "duration": 0.013288,
     "end_time": "2025-08-14T02:40:56.521023",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.507735",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now let's test function to the dimension of each datasets"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "85646e51",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.550873Z",
     "iopub.status.busy": "2025-08-14T02:40:56.549686Z",
     "iopub.status.idle": "2025-08-14T02:40:56.568318Z",
     "shell.execute_reply": "2025-08-14T02:40:56.567100Z"
    },
    "papermill": {
     "duration": 0.035467,
     "end_time": "2025-08-14T02:40:56.569978",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.534511",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The 2019_Q1 dataframe has 365069 rows and 12 columns: trip_id, start_time, end_time, bikeid, tripduration, from_station_id, from_station_name, to_station_id, to_station_name, usertype, gender, birthyear \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The 2020_Q1 dataframe has 426887 rows and 13 columns: ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual \n"
     ]
    }
   ],
   "source": [
    "display_dimensions(df2019, \"2019_Q1\")\n",
    "cat(\"\\n\")\n",
    "display_dimensions(df2020, \"2020_Q1\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b6993b55",
   "metadata": {
    "papermill": {
     "duration": 0.014678,
     "end_time": "2025-08-14T02:40:56.598062",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.583384",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Based on our observation, these are the identified differences in the attributes of the df2019 and df2020 data frames.\n",
    "\n",
    "1. Column Name Changes:\n",
    "\n",
    "* ride_id in the 2020 Q1 dataset is named trip_id in the 2019 Q1 dataset.\n",
    "* started_at and ended_at in the 2020 Q1 dataset are named start_time and end_time in the 2019 Q1 dataset.\n",
    "* start_station_name and start_station_id in the 2020 Q1 dataset are named from_station_name and from_station_id in the 2019 Q1 dataset.\n",
    "* end_station_name and end_station_id in the 2020 Q1 dataset are named to_station_name and to_station_id in the 2019 Q1 dataset.\n",
    "* member_casual in the 2020 Q1 dataset is named usertype in the 2019 Q1 dataset.\n",
    "2. Columns Present Only in the 2019 Q1 Dataset:\n",
    "\n",
    "* bikeid\n",
    "* tripduration\n",
    "* gender\n",
    "* birthyear\n",
    "\n",
    "3. Columns Present Only in the 2020 Q1 Dataset:\n",
    "\n",
    "* rideable_type\n",
    "* start_lat\n",
    "* start_lng\n",
    "* end_lat\n",
    "* end_lng"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ba59fd73",
   "metadata": {
    "papermill": {
     "duration": 0.012724,
     "end_time": "2025-08-14T02:40:56.623555",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.610831",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now we will remove columns that are not common to both datasets to streamline the data and focus on essential columns for analyzing bike usage patterns."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "c007ca3e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.652479Z",
     "iopub.status.busy": "2025-08-14T02:40:56.651248Z",
     "iopub.status.idle": "2025-08-14T02:40:56.669070Z",
     "shell.execute_reply": "2025-08-14T02:40:56.667824Z"
    },
    "papermill": {
     "duration": 0.034287,
     "end_time": "2025-08-14T02:40:56.670801",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.636514",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df2019 <- df2019 %>%\n",
    "    select(\n",
    "        -c(bikeid, tripduration, gender, birthyear)\n",
    "    )\n",
    "\n",
    "df2020 <- df2020 %>%\n",
    "    select(\n",
    "        -c(rideable_type, start_lat, start_lng, end_lat, end_lng)\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7bb732eb",
   "metadata": {
    "papermill": {
     "duration": 0.012956,
     "end_time": "2025-08-14T02:40:56.697099",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.684143",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We will check the attributes again to verify the changes that we made by removing the columns that are mismatching and not needed on our data analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "e1fa8762",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.725807Z",
     "iopub.status.busy": "2025-08-14T02:40:56.724599Z",
     "iopub.status.idle": "2025-08-14T02:40:56.742088Z",
     "shell.execute_reply": "2025-08-14T02:40:56.740877Z"
    },
    "papermill": {
     "duration": 0.034276,
     "end_time": "2025-08-14T02:40:56.744363",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.710087",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'from_station_id'\n",
       "5. 'from_station_name'\n",
       "6. 'to_station_id'\n",
       "7. 'to_station_name'\n",
       "8. 'usertype'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       "[4] \"from_station_id\"   \"from_station_name\" \"to_station_id\"    \n",
       "[7] \"to_station_name\"   \"usertype\"         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_name'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_name\" \"start_station_id\"   \"end_station_name\"  \n",
       "[7] \"end_station_id\"     \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(df2019)\n",
    "cat(\"\\n\")\n",
    "colnames(df2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dae7376c",
   "metadata": {
    "papermill": {
     "duration": 0.013549,
     "end_time": "2025-08-14T02:40:56.771882",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.758333",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We’re almost ready — just a bit more cleaning and refinement to go. The next step is to standardize the column names in the 2019 Q1 dataset so they match the naming conventions of the 2020 Q1 dataset. This standardization ensures consistency across both datasets, making them easier to merge and enabling more accurate and efficient analysis later on."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "fdc2ca05",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.802792Z",
     "iopub.status.busy": "2025-08-14T02:40:56.801483Z",
     "iopub.status.idle": "2025-08-14T02:40:56.814553Z",
     "shell.execute_reply": "2025-08-14T02:40:56.813191Z"
    },
    "papermill": {
     "duration": 0.030595,
     "end_time": "2025-08-14T02:40:56.816439",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.785844",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df2019 <- df2019 %>%\n",
    "    rename(\n",
    "        ride_id = trip_id,\n",
    "        started_at = start_time,\n",
    "        ended_at = end_time,\n",
    "        start_station_name = from_station_name,\n",
    "        start_station_id = from_station_id,\n",
    "        end_station_name = to_station_name,\n",
    "        end_station_id = to_station_id,\n",
    "        member_casual = usertype\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1fd0948f",
   "metadata": {
    "papermill": {
     "duration": 0.014911,
     "end_time": "2025-08-14T02:40:56.844955",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.830044",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Alrighty, now let's check if the attibutes from both the datasets are matching."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "ee2037ed",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.874902Z",
     "iopub.status.busy": "2025-08-14T02:40:56.873637Z",
     "iopub.status.idle": "2025-08-14T02:40:56.890457Z",
     "shell.execute_reply": "2025-08-14T02:40:56.889339Z"
    },
    "papermill": {
     "duration": 0.033537,
     "end_time": "2025-08-14T02:40:56.891946",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.858409",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_id'</li><li>'start_station_name'</li><li>'end_station_id'</li><li>'end_station_name'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_id'\n",
       "5. 'start_station_name'\n",
       "6. 'end_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_id\"   \"start_station_name\" \"end_station_id\"    \n",
       "[7] \"end_station_name\"   \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_name'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_name\" \"start_station_id\"   \"end_station_name\"  \n",
       "[7] \"end_station_id\"     \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(df2019)\n",
    "cat(\"\\n\")\n",
    "colnames(df2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "750395aa",
   "metadata": {
    "papermill": {
     "duration": 0.015074,
     "end_time": "2025-08-14T02:40:56.921123",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.906049",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "All set."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "036ec128",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:56.952385Z",
     "iopub.status.busy": "2025-08-14T02:40:56.951085Z",
     "iopub.status.idle": "2025-08-14T02:40:56.990236Z",
     "shell.execute_reply": "2025-08-14T02:40:56.988961Z"
    },
    "papermill": {
     "duration": 0.056852,
     "end_time": "2025-08-14T02:40:56.991936",
     "exception": false,
     "start_time": "2025-08-14T02:40:56.935084",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Now we will create a simple display_column_type function to inspect the type of columns from the both datasets\n",
    "\n",
    "display_column_types <- function(df, df_name) {\n",
    "    cat(\"The type of column in\", df_name, \"dataframe:\\n\")\n",
    "    sapply(df, class)\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c8d5a6ff",
   "metadata": {
    "papermill": {
     "duration": 0.013679,
     "end_time": "2025-08-14T02:40:57.019618",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.005939",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Okay, the function is set. Now we will inspect both datasets to check for any discrepancies in the data types that might affect our analysis process."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "521d8ff7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.050849Z",
     "iopub.status.busy": "2025-08-14T02:40:57.049631Z",
     "iopub.status.idle": "2025-08-14T02:40:57.075871Z",
     "shell.execute_reply": "2025-08-14T02:40:57.074651Z"
    },
    "papermill": {
     "duration": 0.04398,
     "end_time": "2025-08-14T02:40:57.077581",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.033601",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The type of column in 2019_Q1 dataframe:\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$ride_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$started_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$ended_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$start_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$start_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$end_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$end_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$member_casual</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$ride\\_id] 'numeric'\n",
       "\\item[\\$started\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$ended\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$start\\_station\\_id] 'numeric'\n",
       "\\item[\\$start\\_station\\_name] 'character'\n",
       "\\item[\\$end\\_station\\_id] 'numeric'\n",
       "\\item[\\$end\\_station\\_name] 'character'\n",
       "\\item[\\$member\\_casual] 'character'\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$ride_id\n",
       ":   'numeric'\n",
       "$started_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$ended_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$start_station_id\n",
       ":   'numeric'\n",
       "$start_station_name\n",
       ":   'character'\n",
       "$end_station_id\n",
       ":   'numeric'\n",
       "$end_station_name\n",
       ":   'character'\n",
       "$member_casual\n",
       ":   'character'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$ride_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$started_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$ended_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$start_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$start_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$end_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$end_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$member_casual\n",
       "[1] \"character\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The type of column in 2020_Q1 dataframe:\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$ride_id</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$started_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$ended_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$start_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$start_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$end_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$end_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$member_casual</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$ride\\_id] 'character'\n",
       "\\item[\\$started\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$ended\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$start\\_station\\_name] 'character'\n",
       "\\item[\\$start\\_station\\_id] 'numeric'\n",
       "\\item[\\$end\\_station\\_name] 'character'\n",
       "\\item[\\$end\\_station\\_id] 'numeric'\n",
       "\\item[\\$member\\_casual] 'character'\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$ride_id\n",
       ":   'character'\n",
       "$started_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$ended_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$start_station_name\n",
       ":   'character'\n",
       "$start_station_id\n",
       ":   'numeric'\n",
       "$end_station_name\n",
       ":   'character'\n",
       "$end_station_id\n",
       ":   'numeric'\n",
       "$member_casual\n",
       ":   'character'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$ride_id\n",
       "[1] \"character\"\n",
       "\n",
       "$started_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$ended_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$start_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$start_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$end_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$end_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$member_casual\n",
       "[1] \"character\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "display_column_types(df2019, \"2019_Q1\")\n",
    "cat(\"\\n\")\n",
    "display_column_types(df2020, \"2020_Q1\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d51ab3ce",
   "metadata": {
    "papermill": {
     "duration": 0.014654,
     "end_time": "2025-08-14T02:40:57.107022",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.092368",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In the 2019 Q1 dataset, the ride_id column is of type integer, whereas in the 2020 Q1 dataset it is of type character. To ensure consistency across both datasets, we will convert the ride_id column in the 2019 Q1 dataset to character type."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "dc76f669",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.139460Z",
     "iopub.status.busy": "2025-08-14T02:40:57.138194Z",
     "iopub.status.idle": "2025-08-14T02:40:57.155989Z",
     "shell.execute_reply": "2025-08-14T02:40:57.154572Z"
    },
    "papermill": {
     "duration": 0.035796,
     "end_time": "2025-08-14T02:40:57.157868",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.122072",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Changing the data type from int to string\n",
    "\n",
    "df2019 <- df2019 %>%\n",
    "    mutate(\n",
    "        ride_id = as.character(ride_id)\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2ec8f7f8",
   "metadata": {
    "papermill": {
     "duration": 0.013938,
     "end_time": "2025-08-14T02:40:57.186014",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.172076",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now lets check one more time"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "ecee1553",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.216644Z",
     "iopub.status.busy": "2025-08-14T02:40:57.215442Z",
     "iopub.status.idle": "2025-08-14T02:40:57.240590Z",
     "shell.execute_reply": "2025-08-14T02:40:57.239315Z"
    },
    "papermill": {
     "duration": 0.042256,
     "end_time": "2025-08-14T02:40:57.242085",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.199829",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The type of column in 2019_Q1 dataframe:\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$ride_id</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$started_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$ended_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$start_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$start_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$end_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$end_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$member_casual</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$ride\\_id] 'character'\n",
       "\\item[\\$started\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$ended\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$start\\_station\\_id] 'numeric'\n",
       "\\item[\\$start\\_station\\_name] 'character'\n",
       "\\item[\\$end\\_station\\_id] 'numeric'\n",
       "\\item[\\$end\\_station\\_name] 'character'\n",
       "\\item[\\$member\\_casual] 'character'\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$ride_id\n",
       ":   'character'\n",
       "$started_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$ended_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$start_station_id\n",
       ":   'numeric'\n",
       "$start_station_name\n",
       ":   'character'\n",
       "$end_station_id\n",
       ":   'numeric'\n",
       "$end_station_name\n",
       ":   'character'\n",
       "$member_casual\n",
       ":   'character'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$ride_id\n",
       "[1] \"character\"\n",
       "\n",
       "$started_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$ended_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$start_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$start_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$end_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$end_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$member_casual\n",
       "[1] \"character\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The type of column in 2020_Q1 dataframe:\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$ride_id</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$started_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$ended_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$start_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$start_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$end_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$end_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$member_casual</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$ride\\_id] 'character'\n",
       "\\item[\\$started\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$ended\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$start\\_station\\_name] 'character'\n",
       "\\item[\\$start\\_station\\_id] 'numeric'\n",
       "\\item[\\$end\\_station\\_name] 'character'\n",
       "\\item[\\$end\\_station\\_id] 'numeric'\n",
       "\\item[\\$member\\_casual] 'character'\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$ride_id\n",
       ":   'character'\n",
       "$started_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$ended_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$start_station_name\n",
       ":   'character'\n",
       "$start_station_id\n",
       ":   'numeric'\n",
       "$end_station_name\n",
       ":   'character'\n",
       "$end_station_id\n",
       ":   'numeric'\n",
       "$member_casual\n",
       ":   'character'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$ride_id\n",
       "[1] \"character\"\n",
       "\n",
       "$started_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$ended_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$start_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$start_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$end_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$end_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$member_casual\n",
       "[1] \"character\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "display_column_types(df2019, \"2019_Q1\")\n",
    "cat(\"\\n\")\n",
    "display_column_types(df2020, \"2020_Q1\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "34571c1a",
   "metadata": {
    "papermill": {
     "duration": 0.014244,
     "end_time": "2025-08-14T02:40:57.271121",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.256877",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now both in string data type. That is good."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0f2c1efb",
   "metadata": {
    "papermill": {
     "duration": 0.016313,
     "end_time": "2025-08-14T02:40:57.302025",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.285712",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We then inspect the structure of both datasets to verify that the data types and column names are consistent across them."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "1ec1817f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.335539Z",
     "iopub.status.busy": "2025-08-14T02:40:57.334231Z",
     "iopub.status.idle": "2025-08-14T02:40:57.406258Z",
     "shell.execute_reply": "2025-08-14T02:40:57.404850Z"
    },
    "papermill": {
     "duration": 0.090582,
     "end_time": "2025-08-14T02:40:57.407896",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.317314",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The structure of df2019 Q1 dataframe:\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [365,069 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:365069] \"21742443\" \"21742444\" \"21742445\" \"21742446\" ...\n",
      " $ started_at        : POSIXct[1:365069], format: \"2019-01-01 00:04:37\" \"2019-01-01 00:08:13\" ...\n",
      " $ ended_at          : POSIXct[1:365069], format: \"2019-01-01 00:11:07\" \"2019-01-01 00:15:34\" ...\n",
      " $ start_station_id  : num [1:365069] 199 44 15 123 173 98 98 211 150 268 ...\n",
      " $ start_station_name: chr [1:365069] \"Wabash Ave & Grand Ave\" \"State St & Randolph St\" \"Racine Ave & 18th St\" \"California Ave & Milwaukee Ave\" ...\n",
      " $ end_station_id    : num [1:365069] 84 624 644 176 35 49 49 142 148 141 ...\n",
      " $ end_station_name  : chr [1:365069] \"Milwaukee Ave & Grand Ave\" \"Dearborn St & Van Buren St (*)\" \"Western Ave & Fillmore St (*)\" \"Clark St & Elm St\" ...\n",
      " $ member_casual     : chr [1:365069] \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The structure of df2020 Q1 dataframe:\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [426,887 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:426887] \"EACB19130B0CDA4A\" \"8FED874C809DC021\" \"789F3C21E472CA96\" \"C9A388DAC6ABF313\" ...\n",
      " $ started_at        : POSIXct[1:426887], format: \"2020-01-21 20:06:59\" \"2020-01-30 14:22:39\" ...\n",
      " $ ended_at          : POSIXct[1:426887], format: \"2020-01-21 20:14:30\" \"2020-01-30 14:26:22\" ...\n",
      " $ start_station_name: chr [1:426887] \"Western Ave & Leland Ave\" \"Clark St & Montrose Ave\" \"Broadway & Belmont Ave\" \"Clark St & Randolph St\" ...\n",
      " $ start_station_id  : num [1:426887] 239 234 296 51 66 212 96 96 212 38 ...\n",
      " $ end_station_name  : chr [1:426887] \"Clark St & Leland Ave\" \"Southport Ave & Irving Park Rd\" \"Wilton Ave & Belmont Ave\" \"Fairbanks Ct & Grand Ave\" ...\n",
      " $ end_station_id    : num [1:426887] 326 318 117 24 212 96 212 212 96 100 ...\n",
      " $ member_casual     : chr [1:426887] \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "cat(\"The structure of df2019 Q1 dataframe:\\n\")\n",
    "str(df2019)\n",
    "cat(\"\\n\")\n",
    "cat(\"The structure of df2020 Q1 dataframe:\\n\")\n",
    "str(df2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7a2d4941",
   "metadata": {
    "papermill": {
     "duration": 0.01525,
     "end_time": "2025-08-14T02:40:57.438674",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.423424",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There are some entries in the end_station_name column of the 2019 Q1 dataset containing \"(*)\". We will check if these are valid by matching the unique station IDs with their corresponding station names in each dataset."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "5e7fb287",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.471761Z",
     "iopub.status.busy": "2025-08-14T02:40:57.470563Z",
     "iopub.status.idle": "2025-08-14T02:40:57.479821Z",
     "shell.execute_reply": "2025-08-14T02:40:57.478676Z"
    },
    "papermill": {
     "duration": 0.027719,
     "end_time": "2025-08-14T02:40:57.481641",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.453922",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "display_station_counts <- function(df, df_name) {\n",
    "  start_station_id_count = length(unique(df$start_station_id))\n",
    "  start_station_name_count = length(unique(df$start_station_name))\n",
    "  end_station_id_count = length(unique(df$end_station_id))\n",
    "  end_station_name_count = length(unique(df$end_station_name))\n",
    "  cat(\"The \", df_name, \" dataframe has trips started from\", \n",
    "      start_station_id_count, \"Station IDs and\", \n",
    "      start_station_name_count, \"Station Names.\\n\")\n",
    "  cat(\"The \", df_name, \" dataframe has trips ended at\", \n",
    "      end_station_id_count, \"Station IDs and\", \n",
    "      end_station_name_count, \"Station Names.\\n\")\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c098ce36",
   "metadata": {
    "papermill": {
     "duration": 0.015439,
     "end_time": "2025-08-14T02:40:57.513080",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.497641",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now lets check"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "6df36a08",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.547773Z",
     "iopub.status.busy": "2025-08-14T02:40:57.546483Z",
     "iopub.status.idle": "2025-08-14T02:40:57.606941Z",
     "shell.execute_reply": "2025-08-14T02:40:57.605387Z"
    },
    "papermill": {
     "duration": 0.079898,
     "end_time": "2025-08-14T02:40:57.608682",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.528784",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The  2019 Q1  dataframe has trips started from 594 Station IDs and 594 Station Names.\n",
      "The  2019 Q1  dataframe has trips ended at 600 Station IDs and 600 Station Names.\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The  2020 Q1  dataframe has trips started from 607 Station IDs and 607 Station Names.\n",
      "The  2020 Q1  dataframe has trips ended at 603 Station IDs and 603 Station Names.\n"
     ]
    }
   ],
   "source": [
    "display_station_counts(df2019, \"2019 Q1\")\n",
    "display_station_counts(df2020, \"2020 Q1\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d9015055",
   "metadata": {
    "papermill": {
     "duration": 0.016682,
     "end_time": "2025-08-14T02:40:57.640851",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.624169",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So far so good since all the station Id's are matching with station name countes. But difference is also observed in the labels for rider types in the member_casual column between the two datasets. We will review the labels present in each dataset."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "c70761f4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.674432Z",
     "iopub.status.busy": "2025-08-14T02:40:57.673102Z",
     "iopub.status.idle": "2025-08-14T02:40:57.710138Z",
     "shell.execute_reply": "2025-08-14T02:40:57.708612Z"
    },
    "papermill": {
     "duration": 0.055767,
     "end_time": "2025-08-14T02:40:57.711844",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.656077",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The structure of df2019 Q1 dataframe:\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [365,069 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:365069] \"21742443\" \"21742444\" \"21742445\" \"21742446\" ...\n",
      " $ started_at        : POSIXct[1:365069], format: \"2019-01-01 00:04:37\" \"2019-01-01 00:08:13\" ...\n",
      " $ ended_at          : POSIXct[1:365069], format: \"2019-01-01 00:11:07\" \"2019-01-01 00:15:34\" ...\n",
      " $ start_station_id  : num [1:365069] 199 44 15 123 173 98 98 211 150 268 ...\n",
      " $ start_station_name: chr [1:365069] \"Wabash Ave & Grand Ave\" \"State St & Randolph St\" \"Racine Ave & 18th St\" \"California Ave & Milwaukee Ave\" ...\n",
      " $ end_station_id    : num [1:365069] 84 624 644 176 35 49 49 142 148 141 ...\n",
      " $ end_station_name  : chr [1:365069] \"Milwaukee Ave & Grand Ave\" \"Dearborn St & Van Buren St (*)\" \"Western Ave & Fillmore St (*)\" \"Clark St & Elm St\" ...\n",
      " $ member_casual     : chr [1:365069] \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The structure of df2020 Q1 dataframe:\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [426,887 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:426887] \"EACB19130B0CDA4A\" \"8FED874C809DC021\" \"789F3C21E472CA96\" \"C9A388DAC6ABF313\" ...\n",
      " $ started_at        : POSIXct[1:426887], format: \"2020-01-21 20:06:59\" \"2020-01-30 14:22:39\" ...\n",
      " $ ended_at          : POSIXct[1:426887], format: \"2020-01-21 20:14:30\" \"2020-01-30 14:26:22\" ...\n",
      " $ start_station_name: chr [1:426887] \"Western Ave & Leland Ave\" \"Clark St & Montrose Ave\" \"Broadway & Belmont Ave\" \"Clark St & Randolph St\" ...\n",
      " $ start_station_id  : num [1:426887] 239 234 296 51 66 212 96 96 212 38 ...\n",
      " $ end_station_name  : chr [1:426887] \"Clark St & Leland Ave\" \"Southport Ave & Irving Park Rd\" \"Wilton Ave & Belmont Ave\" \"Fairbanks Ct & Grand Ave\" ...\n",
      " $ end_station_id    : num [1:426887] 326 318 117 24 212 96 212 212 96 100 ...\n",
      " $ member_casual     : chr [1:426887] \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "cat(\"The structure of df2019 Q1 dataframe:\\n\")\n",
    "str(df2019)\n",
    "cat(\"\\n\")\n",
    "cat(\"The structure of df2020 Q1 dataframe:\\n\")\n",
    "str(df2020)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ad9bdceb",
   "metadata": {
    "papermill": {
     "duration": 0.016808,
     "end_time": "2025-08-14T02:40:57.744945",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.728137",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "You see that the member_casual in 2019 is tagged as \"Subscriber\" and in 2020 it is tagged as \"member\". Let's check if there are still more."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "d2a46e76",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.781202Z",
     "iopub.status.busy": "2025-08-14T02:40:57.779920Z",
     "iopub.status.idle": "2025-08-14T02:40:57.801810Z",
     "shell.execute_reply": "2025-08-14T02:40:57.800461Z"
    },
    "papermill": {
     "duration": 0.04105,
     "end_time": "2025-08-14T02:40:57.803561",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.762511",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The rider types in 2019 Q1 Dataframe: Subscriber, Customer \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The rider types in 2020 Q1 Dataframe: member, casual"
     ]
    }
   ],
   "source": [
    "cat(\"The rider types in 2019 Q1 Dataframe:\",\n",
    "    paste(unique(df2019$member_casual), collapse = \", \"), \"\\n\")\n",
    "cat(\"The rider types in 2020 Q1 Dataframe:\",\n",
    "    paste(unique(df2020$member_casual), collapse = \", \"))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35537dfb",
   "metadata": {
    "papermill": {
     "duration": 0.016115,
     "end_time": "2025-08-14T02:40:57.836095",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.819980",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Hmmm, we can see that both datasets use different member_casual tagging."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6cce95b",
   "metadata": {
    "papermill": {
     "duration": 0.016323,
     "end_time": "2025-08-14T02:40:57.870043",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.853720",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As the analysis focuses on the differences in bike usage patterns between annual members and casual riders, I will replace \"Subscriber\" with \"member\" and \"Customer\" with \"casual\" in the member_casual column of the 2019 Q1 dataset. This will standardize the rider type labels, making the data easier to analyze."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "b7f7156f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:57.905532Z",
     "iopub.status.busy": "2025-08-14T02:40:57.904269Z",
     "iopub.status.idle": "2025-08-14T02:40:57.965497Z",
     "shell.execute_reply": "2025-08-14T02:40:57.964194Z"
    },
    "papermill": {
     "duration": 0.081024,
     "end_time": "2025-08-14T02:40:57.967146",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.886122",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df2019 <- df2019 %>%\n",
    "    mutate(\n",
    "        member_casual = recode(\n",
    "            member_casual,\n",
    "            \"Subscriber\" = \"member\",\n",
    "            \"Customer\" = \"casucal\"\n",
    "        )\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ef5f1f44",
   "metadata": {
    "papermill": {
     "duration": 0.015252,
     "end_time": "2025-08-14T02:40:57.997861",
     "exception": false,
     "start_time": "2025-08-14T02:40:57.982609",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now let us check again."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "3d9bb63b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:58.032056Z",
     "iopub.status.busy": "2025-08-14T02:40:58.030808Z",
     "iopub.status.idle": "2025-08-14T02:40:58.058918Z",
     "shell.execute_reply": "2025-08-14T02:40:58.057577Z"
    },
    "papermill": {
     "duration": 0.046806,
     "end_time": "2025-08-14T02:40:58.060518",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.013712",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The rider types in 2019 Q1 Dataframe: member, casucal \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The rider types in 2020 Q1 Dataframe: member, casual"
     ]
    }
   ],
   "source": [
    "cat(\"The rider types in 2019 Q1 Dataframe:\",\n",
    "    paste(unique(df2019$member_casual), collapse = \", \"), \"\\n\")\n",
    "cat(\"The rider types in 2020 Q1 Dataframe:\",\n",
    "    paste(unique(df2020$member_casual), collapse = \", \"))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "51cd533a",
   "metadata": {
    "papermill": {
     "duration": 0.01535,
     "end_time": "2025-08-14T02:40:58.091724",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.076374",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now we will check the satistical summary to understand each dataset better"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "ed838ba9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:58.125579Z",
     "iopub.status.busy": "2025-08-14T02:40:58.124323Z",
     "iopub.status.idle": "2025-08-14T02:40:58.247127Z",
     "shell.execute_reply": "2025-08-14T02:40:58.246009Z"
    },
    "papermill": {
     "duration": 0.141608,
     "end_time": "2025-08-14T02:40:58.248659",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.107051",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The statistical summary of 2019 Q1 dataframe"
     ]
    },
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                    \n",
       " Length:365069      Min.   :2019-01-01 00:04:37.00  \n",
       " Class :character   1st Qu.:2019-01-23 05:26:54.00  \n",
       " Mode  :character   Median :2019-02-25 07:52:56.00  \n",
       "                    Mean   :2019-02-19 21:43:15.42  \n",
       "                    3rd Qu.:2019-03-17 16:52:47.00  \n",
       "                    Max.   :2019-03-31 23:53:48.00  \n",
       "    ended_at                      start_station_id start_station_name\n",
       " Min.   :2019-01-01 00:11:07.00   Min.   :  2.0    Length:365069     \n",
       " 1st Qu.:2019-01-23 05:49:40.00   1st Qu.: 76.0    Class :character  \n",
       " Median :2019-02-25 08:03:50.00   Median :170.0    Mode  :character  \n",
       " Mean   :2019-02-19 22:00:11.91   Mean   :198.1                      \n",
       " 3rd Qu.:2019-03-17 17:16:16.00   3rd Qu.:287.0                      \n",
       " Max.   :2019-06-17 16:04:35.00   Max.   :665.0                      \n",
       " end_station_id  end_station_name   member_casual     \n",
       " Min.   :  2.0   Length:365069      Length:365069     \n",
       " 1st Qu.: 76.0   Class :character   Class :character  \n",
       " Median :168.0   Mode  :character   Mode  :character  \n",
       " Mean   :198.6                                        \n",
       " 3rd Qu.:287.0                                        \n",
       " Max.   :665.0                                        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The statistical summary of 2020 Q1 dataframe"
     ]
    },
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                    \n",
       " Length:426887      Min.   :2020-01-01 00:04:44.00  \n",
       " Class :character   1st Qu.:2020-01-24 14:03:26.00  \n",
       " Mode  :character   Median :2020-02-17 05:01:27.00  \n",
       "                    Mean   :2020-02-14 01:23:18.51  \n",
       "                    3rd Qu.:2020-03-05 15:08:13.50  \n",
       "                    Max.   :2020-03-31 23:51:34.00  \n",
       "                                                    \n",
       "    ended_at                      start_station_name start_station_id\n",
       " Min.   :2020-01-01 00:10:54.00   Length:426887      Min.   :  2.0   \n",
       " 1st Qu.:2020-01-24 14:21:24.50   Class :character   1st Qu.: 77.0   \n",
       " Median :2020-02-17 05:48:58.00   Mode  :character   Median :176.0   \n",
       " Mean   :2020-02-14 01:45:25.43                      Mean   :209.8   \n",
       " 3rd Qu.:2020-03-05 15:27:54.00                      3rd Qu.:298.0   \n",
       " Max.   :2020-05-19 20:10:34.00                      Max.   :675.0   \n",
       "                                                                     \n",
       " end_station_name   end_station_id  member_casual     \n",
       " Length:426887      Min.   :  2.0   Length:426887     \n",
       " Class :character   1st Qu.: 77.0   Class :character  \n",
       " Mode  :character   Median :175.0   Mode  :character  \n",
       "                    Mean   :209.3                     \n",
       "                    3rd Qu.:297.0                     \n",
       "                    Max.   :675.0                     \n",
       "                    NA's   :1                         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cat(\"The statistical summary of 2019 Q1 dataframe\")\n",
    "summary(df2019)\n",
    "cat(\"The statistical summary of 2020 Q1 dataframe\")\n",
    "summary(df2020)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "e65eccb0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:58.285555Z",
     "iopub.status.busy": "2025-08-14T02:40:58.284428Z",
     "iopub.status.idle": "2025-08-14T02:40:58.310209Z",
     "shell.execute_reply": "2025-08-14T02:40:58.309030Z"
    },
    "papermill": {
     "duration": 0.046525,
     "end_time": "2025-08-14T02:40:58.311833",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.265308",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>157EAA4C4A3C8D36</td><td>2020-03-16 11:23:36</td><td>2020-03-16 11:23:24</td><td>HQ QR</td><td>675</td><td>NA</td><td>NA</td><td>casual</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " ride\\_id & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & member\\_casual\\\\\n",
       " <chr> & <dttm> & <dttm> & <chr> & <dbl> & <chr> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 157EAA4C4A3C8D36 & 2020-03-16 11:23:36 & 2020-03-16 11:23:24 & HQ QR & 675 & NA & NA & casual\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 8\n",
       "\n",
       "| ride_id &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 157EAA4C4A3C8D36 | 2020-03-16 11:23:36 | 2020-03-16 11:23:24 | HQ QR | 675 | NA | NA | casual |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          started_at          ended_at            start_station_name\n",
       "1 157EAA4C4A3C8D36 2020-03-16 11:23:36 2020-03-16 11:23:24 HQ QR             \n",
       "  start_station_id end_station_name end_station_id member_casual\n",
       "1 675              NA               NA             casual       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# In the summary of df2020 there is also one NA value, to check:\n",
    "df2020 %>%\n",
    "  filter(is.na(end_station_id))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "37ca7806",
   "metadata": {
    "papermill": {
     "duration": 0.015939,
     "end_time": "2025-08-14T02:40:58.344084",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.328145",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In the 2019 Q1 dataset, the started_at values range from January 2019 to March 2019, while in the 2020 Q1 dataset, the started_at values range from January 2020 to March 2020. Additionally, there is one missing value in the end_station_id column of the 2020 Q1 dataset, which we will remove since it cannot be recovered or corrected."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "c812f8c4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:58.378160Z",
     "iopub.status.busy": "2025-08-14T02:40:58.376977Z",
     "iopub.status.idle": "2025-08-14T02:40:58.404464Z",
     "shell.execute_reply": "2025-08-14T02:40:58.403302Z"
    },
    "papermill": {
     "duration": 0.046132,
     "end_time": "2025-08-14T02:40:58.405923",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.359791",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1 row with missing end_station_id is removed"
     ]
    }
   ],
   "source": [
    "initial_count <- nrow(df2020)\n",
    "df2020 <- df2020 %>%\n",
    "    filter(!is.na(end_station_id))\n",
    "cat(initial_count - nrow(df2020),\n",
    "   \"row with missing end_station_id is removed\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a7d042e",
   "metadata": {
    "papermill": {
     "duration": 0.016134,
     "end_time": "2025-08-14T02:40:58.438334",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.422200",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "With the datasets prepared, we can now combine them into a single dataset for further analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "0ed710da",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:58.473735Z",
     "iopub.status.busy": "2025-08-14T02:40:58.472518Z",
     "iopub.status.idle": "2025-08-14T02:40:58.975113Z",
     "shell.execute_reply": "2025-08-14T02:40:58.973619Z"
    },
    "papermill": {
     "duration": 0.523061,
     "end_time": "2025-08-14T02:40:58.977461",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.454400",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips <- bind_rows(df2019, df2020)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "04eb7723",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:59.013568Z",
     "iopub.status.busy": "2025-08-14T02:40:59.012333Z",
     "iopub.status.idle": "2025-08-14T02:40:59.536411Z",
     "shell.execute_reply": "2025-08-14T02:40:59.535201Z"
    },
    "papermill": {
     "duration": 0.544007,
     "end_time": "2025-08-14T02:40:59.538185",
     "exception": false,
     "start_time": "2025-08-14T02:40:58.994178",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                    \n",
       " Length:791955      Min.   :2019-01-01 00:04:37.00  \n",
       " Class :character   1st Qu.:2019-02-28 17:03:58.50  \n",
       " Mode  :character   Median :2020-01-07 12:48:49.00  \n",
       "                    Mean   :2019-09-01 11:57:46.86  \n",
       "                    3rd Qu.:2020-02-19 19:31:49.50  \n",
       "                    Max.   :2020-03-31 23:51:34.00  \n",
       "    ended_at                      start_station_id start_station_name\n",
       " Min.   :2019-01-01 00:11:07.00   Min.   :  2.0    Length:791955     \n",
       " 1st Qu.:2019-02-28 17:15:57.50   1st Qu.: 77.0    Class :character  \n",
       " Median :2020-01-07 13:02:39.00   Median :174.0    Mode  :character  \n",
       " Mean   :2019-09-01 12:17:30.69   Mean   :204.4                      \n",
       " 3rd Qu.:2020-02-19 19:51:50.50   3rd Qu.:291.0                      \n",
       " Max.   :2020-05-19 20:10:34.00   Max.   :675.0                      \n",
       " end_station_id  end_station_name   member_casual     \n",
       " Min.   :  2.0   Length:791955      Length:791955     \n",
       " 1st Qu.: 77.0   Class :character   Class :character  \n",
       " Median :174.0   Mode  :character   Mode  :character  \n",
       " Mean   :204.4                                        \n",
       " 3rd Qu.:291.0                                        \n",
       " Max.   :675.0                                        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Now lets check that statistical summary if all rows of the two datasets are combined successfully.\n",
    "summary(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9b5d7b88",
   "metadata": {
    "papermill": {
     "duration": 0.015955,
     "end_time": "2025-08-14T02:40:59.571109",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.555154",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "All good, now number of the observation (or record) is the sum of the total processes observation (or record) of the two datasets "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "1f7a17e4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:59.607136Z",
     "iopub.status.busy": "2025-08-14T02:40:59.605922Z",
     "iopub.status.idle": "2025-08-14T02:40:59.760552Z",
     "shell.execute_reply": "2025-08-14T02:40:59.759306Z"
    },
    "papermill": {
     "duration": 0.175261,
     "end_time": "2025-08-14T02:40:59.762005",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.586744",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0 entries with duplicate data are removed"
     ]
    }
   ],
   "source": [
    "# Now we will check and remove duplicate entry if there are any.\n",
    "intial_count <- nrow(all_trips)\n",
    "all_trips <- distinct(all_trips)\n",
    "cat(intial_count - nrow(all_trips),\n",
    "   \"entries with duplicate data are removed\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4292dba7",
   "metadata": {
    "papermill": {
     "duration": 0.016461,
     "end_time": "2025-08-14T02:40:59.795549",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.779088",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Okay good, that means we don't have any duplicate data to remove."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "ff0fe4da",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:59.831217Z",
     "iopub.status.busy": "2025-08-14T02:40:59.829972Z",
     "iopub.status.idle": "2025-08-14T02:40:59.841660Z",
     "shell.execute_reply": "2025-08-14T02:40:59.840185Z"
    },
    "papermill": {
     "duration": 0.031802,
     "end_time": "2025-08-14T02:40:59.843503",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.811701",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The All Trips dataframe has 791955 rows and 8 columns: ride_id, started_at, ended_at, start_station_id, start_station_name, end_station_id, end_station_name, member_casual \n"
     ]
    }
   ],
   "source": [
    "# We will verify how many columns and rows we have for now after all those processing above.\n",
    "display_dimensions(all_trips, \"All Trips\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "16b2de59",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:59.879124Z",
     "iopub.status.busy": "2025-08-14T02:40:59.877920Z",
     "iopub.status.idle": "2025-08-14T02:40:59.893025Z",
     "shell.execute_reply": "2025-08-14T02:40:59.891860Z"
    },
    "papermill": {
     "duration": 0.033977,
     "end_time": "2025-08-14T02:40:59.894593",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.860616",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The type of column in All Trips dataframe:\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$ride_id</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$started_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$ended_at</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'POSIXct'</li><li>'POSIXt'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$start_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$start_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$end_station_id</dt>\n",
       "\t\t<dd>'numeric'</dd>\n",
       "\t<dt>$end_station_name</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "\t<dt>$member_casual</dt>\n",
       "\t\t<dd>'character'</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$ride\\_id] 'character'\n",
       "\\item[\\$started\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$ended\\_at] \\begin{enumerate*}\n",
       "\\item 'POSIXct'\n",
       "\\item 'POSIXt'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$start\\_station\\_id] 'numeric'\n",
       "\\item[\\$start\\_station\\_name] 'character'\n",
       "\\item[\\$end\\_station\\_id] 'numeric'\n",
       "\\item[\\$end\\_station\\_name] 'character'\n",
       "\\item[\\$member\\_casual] 'character'\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$ride_id\n",
       ":   'character'\n",
       "$started_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$ended_at\n",
       ":   1. 'POSIXct'\n",
       "2. 'POSIXt'\n",
       "\n",
       "\n",
       "\n",
       "$start_station_id\n",
       ":   'numeric'\n",
       "$start_station_name\n",
       ":   'character'\n",
       "$end_station_id\n",
       ":   'numeric'\n",
       "$end_station_name\n",
       ":   'character'\n",
       "$member_casual\n",
       ":   'character'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$ride_id\n",
       "[1] \"character\"\n",
       "\n",
       "$started_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$ended_at\n",
       "[1] \"POSIXct\" \"POSIXt\" \n",
       "\n",
       "$start_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$start_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$end_station_id\n",
       "[1] \"numeric\"\n",
       "\n",
       "$end_station_name\n",
       "[1] \"character\"\n",
       "\n",
       "$member_casual\n",
       "[1] \"character\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    " # Now we will check the type of columns in the dataset\n",
    "display_column_types(all_trips, \"All Trips\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6765885a",
   "metadata": {
    "papermill": {
     "duration": 0.016734,
     "end_time": "2025-08-14T02:40:59.928498",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.911764",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Cool"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "4f559757",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:40:59.964704Z",
     "iopub.status.busy": "2025-08-14T02:40:59.963441Z",
     "iopub.status.idle": "2025-08-14T02:41:00.222089Z",
     "shell.execute_reply": "2025-08-14T02:41:00.220735Z"
    },
    "papermill": {
     "duration": 0.279028,
     "end_time": "2025-08-14T02:41:00.224252",
     "exception": false,
     "start_time": "2025-08-14T02:40:59.945224",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [791,955 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:791955] \"21742443\" \"21742444\" \"21742445\" \"21742446\" ...\n",
      " $ started_at        : POSIXct[1:791955], format: \"2019-01-01 00:04:37\" \"2019-01-01 00:08:13\" ...\n",
      " $ ended_at          : POSIXct[1:791955], format: \"2019-01-01 00:11:07\" \"2019-01-01 00:15:34\" ...\n",
      " $ start_station_id  : num [1:791955] 199 44 15 123 173 98 98 211 150 268 ...\n",
      " $ start_station_name: chr [1:791955] \"Wabash Ave & Grand Ave\" \"State St & Randolph St\" \"Racine Ave & 18th St\" \"California Ave & Milwaukee Ave\" ...\n",
      " $ end_station_id    : num [1:791955] 84 624 644 176 35 49 49 142 148 141 ...\n",
      " $ end_station_name  : chr [1:791955] \"Milwaukee Ave & Grand Ave\" \"Dearborn St & Van Buren St (*)\" \"Western Ave & Fillmore St (*)\" \"Clark St & Elm St\" ...\n",
      " $ member_casual     : chr [1:791955] \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "# Lets check one more time the structure of both combined and processed dataset\n",
    "str(all_trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "1c05efff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:00.261074Z",
     "iopub.status.busy": "2025-08-14T02:41:00.259906Z",
     "iopub.status.idle": "2025-08-14T02:41:00.783144Z",
     "shell.execute_reply": "2025-08-14T02:41:00.781990Z"
    },
    "papermill": {
     "duration": 0.543312,
     "end_time": "2025-08-14T02:41:00.784830",
     "exception": false,
     "start_time": "2025-08-14T02:41:00.241518",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                    \n",
       " Length:791955      Min.   :2019-01-01 00:04:37.00  \n",
       " Class :character   1st Qu.:2019-02-28 17:03:58.50  \n",
       " Mode  :character   Median :2020-01-07 12:48:49.00  \n",
       "                    Mean   :2019-09-01 11:57:46.86  \n",
       "                    3rd Qu.:2020-02-19 19:31:49.50  \n",
       "                    Max.   :2020-03-31 23:51:34.00  \n",
       "    ended_at                      start_station_id start_station_name\n",
       " Min.   :2019-01-01 00:11:07.00   Min.   :  2.0    Length:791955     \n",
       " 1st Qu.:2019-02-28 17:15:57.50   1st Qu.: 77.0    Class :character  \n",
       " Median :2020-01-07 13:02:39.00   Median :174.0    Mode  :character  \n",
       " Mean   :2019-09-01 12:17:30.69   Mean   :204.4                      \n",
       " 3rd Qu.:2020-02-19 19:51:50.50   3rd Qu.:291.0                      \n",
       " Max.   :2020-05-19 20:10:34.00   Max.   :675.0                      \n",
       " end_station_id  end_station_name   member_casual     \n",
       " Min.   :  2.0   Length:791955      Length:791955     \n",
       " 1st Qu.: 77.0   Class :character   Class :character  \n",
       " Median :174.0   Mode  :character   Mode  :character  \n",
       " Mean   :204.4                                        \n",
       " 3rd Qu.:291.0                                        \n",
       " Max.   :675.0                                        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Lets check the sumarry again of both combined and processed dataset\n",
    "summary(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1fbdd3d8",
   "metadata": {
    "papermill": {
     "duration": 0.01732,
     "end_time": "2025-08-14T02:41:00.819423",
     "exception": false,
     "start_time": "2025-08-14T02:41:00.802103",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Create new columns to extract started_date, started_month, started_day, started_year, and started_day_of_week from the started_at column. This will help in analyzing ride patterns over time."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "eeab71b2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:00.858418Z",
     "iopub.status.busy": "2025-08-14T02:41:00.857084Z",
     "iopub.status.idle": "2025-08-14T02:41:02.018656Z",
     "shell.execute_reply": "2025-08-14T02:41:02.017135Z"
    },
    "papermill": {
     "duration": 1.183916,
     "end_time": "2025-08-14T02:41:02.020526",
     "exception": false,
     "start_time": "2025-08-14T02:41:00.836610",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$started_date <- as.Date(all_trips$started_at)\n",
    "all_trips$started_month <- format(all_trips$started_date, \"%m\")\n",
    "all_trips$started_day <- format(all_trips$started_date, \"%d\")\n",
    "all_trips$started_year <- format(all_trips$started_date, \"%Y\")\n",
    "all_trips$started_day_of_week <- wday(all_trips$started_date, label = TRUE)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "02fecd11",
   "metadata": {
    "papermill": {
     "duration": 0.018172,
     "end_time": "2025-08-14T02:41:02.056022",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.037850",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Calculate the ride length by subtracting the started_at time from the ended_at time, which will give the duration of each ride in seconds. Then, convert the ride_duration column to numeric format for further calculations."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "790ec3d5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:02.094492Z",
     "iopub.status.busy": "2025-08-14T02:41:02.093295Z",
     "iopub.status.idle": "2025-08-14T02:41:02.697703Z",
     "shell.execute_reply": "2025-08-14T02:41:02.696229Z"
    },
    "papermill": {
     "duration": 0.625752,
     "end_time": "2025-08-14T02:41:02.699540",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.073788",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$ride_duration <- difftime(all_trips$ended_at, \n",
    "                                    all_trips$started_at)\n",
    "all_trips$ride_duration <- as.numeric(as.character(all_trips$ride_duration))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2f8f9433",
   "metadata": {
    "papermill": {
     "duration": 0.01813,
     "end_time": "2025-08-14T02:41:02.735121",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.716991",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Inspect the structure of the columns in the dataset to ensure that the new columns have been added correctly and that the data types are appropriate for analysis."
   ]
  },
  {
   "cell_type": "raw",
   "id": "5f880d32",
   "metadata": {
    "papermill": {
     "duration": 0.016173,
     "end_time": "2025-08-14T02:41:02.767809",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.751636",
     "status": "completed"
    },
    "tags": []
   },
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "0861143b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:02.803716Z",
     "iopub.status.busy": "2025-08-14T02:41:02.802476Z",
     "iopub.status.idle": "2025-08-14T02:41:02.822694Z",
     "shell.execute_reply": "2025-08-14T02:41:02.821481Z"
    },
    "papermill": {
     "duration": 0.040914,
     "end_time": "2025-08-14T02:41:02.824992",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.784078",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [791,955 × 14] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id            : chr [1:791955] \"21742443\" \"21742444\" \"21742445\" \"21742446\" ...\n",
      " $ started_at         : POSIXct[1:791955], format: \"2019-01-01 00:04:37\" \"2019-01-01 00:08:13\" ...\n",
      " $ ended_at           : POSIXct[1:791955], format: \"2019-01-01 00:11:07\" \"2019-01-01 00:15:34\" ...\n",
      " $ start_station_id   : num [1:791955] 199 44 15 123 173 98 98 211 150 268 ...\n",
      " $ start_station_name : chr [1:791955] \"Wabash Ave & Grand Ave\" \"State St & Randolph St\" \"Racine Ave & 18th St\" \"California Ave & Milwaukee Ave\" ...\n",
      " $ end_station_id     : num [1:791955] 84 624 644 176 35 49 49 142 148 141 ...\n",
      " $ end_station_name   : chr [1:791955] \"Milwaukee Ave & Grand Ave\" \"Dearborn St & Van Buren St (*)\" \"Western Ave & Fillmore St (*)\" \"Clark St & Elm St\" ...\n",
      " $ member_casual      : chr [1:791955] \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ started_date       : Date[1:791955], format: \"2019-01-01\" \"2019-01-01\" ...\n",
      " $ started_month      : chr [1:791955] \"01\" \"01\" \"01\" \"01\" ...\n",
      " $ started_day        : chr [1:791955] \"01\" \"01\" \"01\" \"01\" ...\n",
      " $ started_year       : chr [1:791955] \"2019\" \"2019\" \"2019\" \"2019\" ...\n",
      " $ started_day_of_week: Ord.factor w/ 7 levels \"Sun\"<\"Mon\"<\"Tue\"<..: 3 3 3 3 3 3 3 3 3 3 ...\n",
      " $ ride_duration      : num [1:791955] 390 441 829 1783 364 ...\n"
     ]
    }
   ],
   "source": [
    "str(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a1b7c197",
   "metadata": {
    "papermill": {
     "duration": 0.018367,
     "end_time": "2025-08-14T02:41:02.860604",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.842237",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Transform the started_month, started_day, and started_year columns into numeric for better analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "4fd3cc75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:02.897937Z",
     "iopub.status.busy": "2025-08-14T02:41:02.896662Z",
     "iopub.status.idle": "2025-08-14T02:41:03.085102Z",
     "shell.execute_reply": "2025-08-14T02:41:03.083694Z"
    },
    "papermill": {
     "duration": 0.208866,
     "end_time": "2025-08-14T02:41:03.086872",
     "exception": false,
     "start_time": "2025-08-14T02:41:02.878006",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$started_month <- as.numeric(as.character(all_trips$started_month))\n",
    "all_trips$started_day <- as.numeric(as.character(all_trips$started_day))\n",
    "all_trips$started_year <- as.numeric(as.character(all_trips$started_year))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6fd0e803",
   "metadata": {
    "papermill": {
     "duration": 0.01708,
     "end_time": "2025-08-14T02:41:03.121953",
     "exception": false,
     "start_time": "2025-08-14T02:41:03.104873",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Get the summary of the dataset to see the updates statistics after adding the new columns"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "969490f0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:03.158376Z",
     "iopub.status.busy": "2025-08-14T02:41:03.157210Z",
     "iopub.status.idle": "2025-08-14T02:41:03.859208Z",
     "shell.execute_reply": "2025-08-14T02:41:03.858105Z"
    },
    "papermill": {
     "duration": 0.721618,
     "end_time": "2025-08-14T02:41:03.860759",
     "exception": false,
     "start_time": "2025-08-14T02:41:03.139141",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                    \n",
       " Length:791955      Min.   :2019-01-01 00:04:37.00  \n",
       " Class :character   1st Qu.:2019-02-28 17:03:58.50  \n",
       " Mode  :character   Median :2020-01-07 12:48:49.00  \n",
       "                    Mean   :2019-09-01 11:57:46.86  \n",
       "                    3rd Qu.:2020-02-19 19:31:49.50  \n",
       "                    Max.   :2020-03-31 23:51:34.00  \n",
       "                                                    \n",
       "    ended_at                      start_station_id start_station_name\n",
       " Min.   :2019-01-01 00:11:07.00   Min.   :  2.0    Length:791955     \n",
       " 1st Qu.:2019-02-28 17:15:57.50   1st Qu.: 77.0    Class :character  \n",
       " Median :2020-01-07 13:02:39.00   Median :174.0    Mode  :character  \n",
       " Mean   :2019-09-01 12:17:30.69   Mean   :204.4                      \n",
       " 3rd Qu.:2020-02-19 19:51:50.50   3rd Qu.:291.0                      \n",
       " Max.   :2020-05-19 20:10:34.00   Max.   :675.0                      \n",
       "                                                                     \n",
       " end_station_id  end_station_name   member_casual       started_date       \n",
       " Min.   :  2.0   Length:791955      Length:791955      Min.   :2019-01-01  \n",
       " 1st Qu.: 77.0   Class :character   Class :character   1st Qu.:2019-02-28  \n",
       " Median :174.0   Mode  :character   Mode  :character   Median :2020-01-07  \n",
       " Mean   :204.4                                         Mean   :2019-08-31  \n",
       " 3rd Qu.:291.0                                         3rd Qu.:2020-02-19  \n",
       " Max.   :675.0                                         Max.   :2020-03-31  \n",
       "                                                                           \n",
       " started_month    started_day     started_year  started_day_of_week\n",
       " Min.   :1.000   Min.   : 1.00   Min.   :2019   Sun: 78849         \n",
       " 1st Qu.:1.000   1st Qu.: 7.00   1st Qu.:2019   Mon:117176         \n",
       " Median :2.000   Median :14.00   Median :2020   Tue:135966         \n",
       " Mean   :2.078   Mean   :14.75   Mean   :2020   Wed:130325         \n",
       " 3rd Qu.:3.000   3rd Qu.:22.00   3rd Qu.:2020   Thu:133043         \n",
       " Max.   :3.000   Max.   :31.00   Max.   :2020   Fri:123710         \n",
       "                                                Sat: 72886         \n",
       " ride_duration     \n",
       " Min.   :    -552  \n",
       " 1st Qu.:     328  \n",
       " Median :     537  \n",
       " Mean   :    1184  \n",
       " 3rd Qu.:     910  \n",
       " Max.   :10632022  \n",
       "                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1e932965",
   "metadata": {
    "papermill": {
     "duration": 0.016612,
     "end_time": "2025-08-14T02:41:03.894501",
     "exception": false,
     "start_time": "2025-08-14T02:41:03.877889",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The ride_duration column have negative values, which indicates that there are rides where the end time is earlier than the start time. This could be due to data entry errors or other issues. See the records with negative or zero ride_duration."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "755bd389",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:03.931768Z",
     "iopub.status.busy": "2025-08-14T02:41:03.930556Z",
     "iopub.status.idle": "2025-08-14T02:41:03.955420Z",
     "shell.execute_reply": "2025-08-14T02:41:03.953985Z"
    },
    "papermill": {
     "duration": 0.045238,
     "end_time": "2025-08-14T02:41:03.956983",
     "exception": false,
     "start_time": "2025-08-14T02:41:03.911745",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [209 × 14] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id            : chr [1:209] \"23EF1DCC9FCA40BA\" \"9461DFF13D8BA8AD\" \"86163D9676BBBE62\" \"836931C569802344\" ...\n",
      " $ started_at         : POSIXct[1:209], format: \"2020-02-28 11:34:40\" \"2020-02-28 10:09:43\" ...\n",
      " $ ended_at           : POSIXct[1:209], format: \"2020-02-28 11:34:40\" \"2020-02-28 10:09:42\" ...\n",
      " $ start_station_id   : num [1:209] 675 675 675 675 675 675 675 675 675 675 ...\n",
      " $ start_station_name : chr [1:209] \"HQ QR\" \"HQ QR\" \"HQ QR\" \"HQ QR\" ...\n",
      " $ end_station_id     : num [1:209] 675 675 675 675 675 675 675 675 675 675 ...\n",
      " $ end_station_name   : chr [1:209] \"HQ QR\" \"HQ QR\" \"HQ QR\" \"HQ QR\" ...\n",
      " $ member_casual      : chr [1:209] \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      " $ started_date       : Date[1:209], format: \"2020-02-28\" \"2020-02-28\" ...\n",
      " $ started_month      : num [1:209] 2 2 2 2 2 2 2 2 2 2 ...\n",
      " $ started_day        : num [1:209] 28 28 26 27 28 28 26 26 26 26 ...\n",
      " $ started_year       : num [1:209] 2020 2020 2020 2020 2020 2020 2020 2020 2020 2020 ...\n",
      " $ started_day_of_week: Ord.factor w/ 7 levels \"Sun\"<\"Mon\"<\"Tue\"<..: 6 6 4 5 6 6 4 4 4 4 ...\n",
      " $ ride_duration      : num [1:209] 0 -1 0 0 0 0 0 0 0 0 ...\n"
     ]
    }
   ],
   "source": [
    "bad_data <- all_trips %>%\n",
    "  filter(\n",
    "      ride_duration <= 0\n",
    "  )\n",
    "str(bad_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "68869e4d",
   "metadata": {
    "papermill": {
     "duration": 0.016723,
     "end_time": "2025-08-14T02:41:03.991114",
     "exception": false,
     "start_time": "2025-08-14T02:41:03.974391",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "I have observed that many of these bad data entries in the dataset has same start_station_name and end_station_name as \"HQ QR\", start_station_id and end_station_id as 675, member_casual as \"casual\". We will see how many such entries have negative or zero ride_duration."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "a81091e8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:04.028552Z",
     "iopub.status.busy": "2025-08-14T02:41:04.027300Z",
     "iopub.status.idle": "2025-08-14T02:41:04.102164Z",
     "shell.execute_reply": "2025-08-14T02:41:04.100793Z"
    },
    "papermill": {
     "duration": 0.095598,
     "end_time": "2025-08-14T02:41:04.103938",
     "exception": false,
     "start_time": "2025-08-14T02:41:04.008340",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [209 × 14] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id            : chr [1:209] \"23EF1DCC9FCA40BA\" \"9461DFF13D8BA8AD\" \"86163D9676BBBE62\" \"836931C569802344\" ...\n",
      " $ started_at         : POSIXct[1:209], format: \"2020-02-28 11:34:40\" \"2020-02-28 10:09:43\" ...\n",
      " $ ended_at           : POSIXct[1:209], format: \"2020-02-28 11:34:40\" \"2020-02-28 10:09:42\" ...\n",
      " $ start_station_id   : num [1:209] 675 675 675 675 675 675 675 675 675 675 ...\n",
      " $ start_station_name : chr [1:209] \"HQ QR\" \"HQ QR\" \"HQ QR\" \"HQ QR\" ...\n",
      " $ end_station_id     : num [1:209] 675 675 675 675 675 675 675 675 675 675 ...\n",
      " $ end_station_name   : chr [1:209] \"HQ QR\" \"HQ QR\" \"HQ QR\" \"HQ QR\" ...\n",
      " $ member_casual      : chr [1:209] \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      " $ started_date       : Date[1:209], format: \"2020-02-28\" \"2020-02-28\" ...\n",
      " $ started_month      : num [1:209] 2 2 2 2 2 2 2 2 2 2 ...\n",
      " $ started_day        : num [1:209] 28 28 26 27 28 28 26 26 26 26 ...\n",
      " $ started_year       : num [1:209] 2020 2020 2020 2020 2020 2020 2020 2020 2020 2020 ...\n",
      " $ started_day_of_week: Ord.factor w/ 7 levels \"Sun\"<\"Mon\"<\"Tue\"<..: 6 6 4 5 6 6 4 4 4 4 ...\n",
      " $ ride_duration      : num [1:209] 0 -1 0 0 0 0 0 0 0 0 ...\n"
     ]
    }
   ],
   "source": [
    "bad_data <- all_trips %>%\n",
    "    filter(\n",
    "        ride_duration <= 0 &\n",
    "        start_station_name == \"HQ QR\" & end_station_name == \"HQ QR\" &\n",
    "        start_station_id == 675 & end_station_id == 675 &\n",
    "        member_casual == \"casual\"\n",
    "    )\n",
    "str(bad_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7aa5498d",
   "metadata": {
    "papermill": {
     "duration": 0.017012,
     "end_time": "2025-08-14T02:41:04.138389",
     "exception": false,
     "start_time": "2025-08-14T02:41:04.121377",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "All these entries are likely related to the quality check of bikes at the Cyclistic headquarters (HQ QR) and should be removed."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "171ff144",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:04.176961Z",
     "iopub.status.busy": "2025-08-14T02:41:04.175791Z",
     "iopub.status.idle": "2025-08-14T02:41:04.243194Z",
     "shell.execute_reply": "2025-08-14T02:41:04.241606Z"
    },
    "papermill": {
     "duration": 0.088713,
     "end_time": "2025-08-14T02:41:04.245241",
     "exception": false,
     "start_time": "2025-08-14T02:41:04.156528",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "209 rows with bad data are removed."
     ]
    }
   ],
   "source": [
    "all_trips_cleaned <- all_trips[\n",
    "  !(\n",
    "      all_trips$ride_duration <= 0 &\n",
    "      all_trips$start_station_name == \"HQ QR\" & \n",
    "      all_trips$end_station_name == \"HQ QR\" &\n",
    "      all_trips$start_station_id == 675 & \n",
    "      all_trips$end_station_id == 675      \n",
    "  ),\n",
    "]\n",
    "cat(nrow(all_trips) - nrow(all_trips_cleaned), \n",
    "    \"rows with bad data are removed.\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "995e85db",
   "metadata": {
    "papermill": {
     "duration": 0.01728,
     "end_time": "2025-08-14T02:41:04.279949",
     "exception": false,
     "start_time": "2025-08-14T02:41:04.262669",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The ride_duration column has a maximum value of 10,632,022 seconds (2953.34 hours), which is quite high and may indicate outliers or very long rides. See the spread, central tendency, and outliers using a box plot."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "584c5f3b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:04.316729Z",
     "iopub.status.busy": "2025-08-14T02:41:04.315685Z",
     "iopub.status.idle": "2025-08-14T02:41:05.870744Z",
     "shell.execute_reply": "2025-08-14T02:41:05.868157Z"
    },
    "papermill": {
     "duration": 1.576269,
     "end_time": "2025-08-14T02:41:05.873359",
     "exception": false,
     "start_time": "2025-08-14T02:41:04.297090",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ3wUVd/G8bMlZROSQBKSQAIkJCH0XgVEAQHpUgQBQUAFbxCxosCtWLAhioJi\nQQXp6C0CIk3EghQp0msChNBCCultszvPixOGNQnJpiyJ8/y+L/jsnpmd/c/MLntlZs4ZnaIo\nAgAAAP9++oouAAAAAOWDYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiC\nHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAA\ngEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ\n7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAA\nADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHVAp6G7D2eRRo27T\ngY88v+X4jYquMb/YvX3VOi9kWyq6nHysy2c91ijYz8VodHZ1b/fcvtvOZ752u42v0+n0eudq\n1et0G/zEjyeSbF9VonXPzTylztz/cFzZ1y07eUeh1Tq5uPoF1u0+8OF3Fm/LVsr+Po5SuT85\nwL8bwQ6o1MxZadfOH1235L3ezeo8veJURZdTzjq2aNakSZMmTZo8/O358l1y5LJBo15ddCI6\nLsdiMWdnpKbnlm45imJOir/4y/efDmwevuhkpcvW+eTmZMddOb993bIXx/ao2fTBwyk5FV2R\nA3cxgEIZK7oAAHaxWlI/Gt2mU7fYwf5uFV1LuTl57NiNXKsQwjMxu3yXvPX1P+QDg5PPQ48M\nDmpbvYwLtJjjn+nx7KMxX5W5tDsk8di3XVpWuXbmK9cK/fvdcbsYQKE4YgdULt4RS+JviT1z\ndN8Hz3aXk6yWtGlP7anY8v4tTqeb5QPfZl8s/fyzt8aG2fOqGh2/jbfd+lcv7V73SYhr3h/A\nqZe+/l98pnzs13qlOlttF4MjVsFOocM3qpVERx7/7rNXG3o6y0nJUV/3//RkBdZ2O5Vn6wHa\nwxE7oHLRGzx9fHzUpz4+flPf2/bHEvfv4zOEEHF7fhOia8VVV27i9vxxJD3HfPM6sORTu7dv\nv+zTqnPzqs7lsnyrkrdoY5USHODUO3nYbnwhhF//J757/vNWrx+ST9clZA32NQkhdAaPf85Y\nYYyuXmrNPj4+tUNf7tW7ZUjdgXFmixDij5lTc5/YYtRVQGFF7OLKs/UA7eGIHfAv4KbP+2V2\n9YnIN0nJTfz2w/8OuKdlzepVnZ1N1WvW7tJv1Aer/8i9+YOaEvW1m0EvL1R39xuYac1rP//d\ncPUC9jp9FsjGHQ/UzZuz+lChZC99bVLzuoFuzm6BdRuPmvLqvssZdhZcbFV/jh/UvXv3NEte\nNcfnjevevftLh+PLuFghxA+Nqut0ugVX0uTTy7/20ul0/i1+tLPygvzv9S/YWMTl/+mXdj43\ntn9ITR9nV4/gRp2mfbRJTZkFxR3eOPWRgRF1ari7uAbUibi714gvNuwrY28C96C+q8eEy8dZ\nN7bOv7kp/rFzbWTEfqmuy8zoFNl4/MP2ssXg5C2EiN21Ykinpt4m5+hsixBCsWas/eS1fve0\nDfSt6mJ0cvOoGtak3einXt17KV1dbBG7uIitZ88uLljenqWze7WJ8PZwNXlUa9Lx/jkr/yrb\nJgT+zRQAlYD6lfRtuNam2XIj9sKyt4bLSTqdftbfcbavSo3e3K1WlUK/2oF3TzyTYZaz/Ta9\nndre7+sziqJYzAkdvVxki5N746PpeXP+MjBENrr5Dv54UP7TlwYnn5mrTqvvfm1PH3XS+azc\nElW1tqFvwam9fr1cxCayc2ULXbJf8w23W6wl5+qt5dyzueAM+15qps6w9UZW0eseu2t+Def8\n5xabPzZbfdzv0HV15l/eH+OkK+RgWu2u/4nJzs1fh42spF/UmSMe2VlwhqSoF9UZOn2dt8ts\ndu4Q25nTry1SZ55xIVk2HpuX95nRG6vFH/yomlGvrqwl5+r4VoVfs2hwqfn58cQidoTcxWX5\n5BQs7+eXuxWcv/97+4rYgICGEeyASqHQHzNbeoP7E5/ssn1JbmbUvb4mdQajyadx03A3w63D\n8P53vWRRFEVRrLkpw2p5yEbnKs0vZ1sOv3e3OtvkjRfVZaq//Tp9XuxzreZnGz4MTr7biww3\n9lelKIoaF+769GTR28f+xcbu/GXz5s39ffJm9m06e/Pmzb/sun67JdsGu5qdvk+ykRgfe3D7\n0ro3r7Hzb/eG+qpC1z0ndX+Y6db1LXonr2oFLiBTg92lrdN0NzdstfrtBz80vPtdDW5V0uW1\nIrZGscEuJ+2gOkPog7/m27klDHaeD9Zwt13Z3c82V5+6Vg9p1aZ1g9BbOc8z+GnbhRe6i8v+\nyVHL0+n0Bp1OCGF08zDYflCd/aOzigrHgFYR7IBKQRQnoNPz+X6o9rx06/e134tLMiyKoii5\nGZfefLCe2j5l9zU5c3LkV6ab53ObP/eN2iGgdu/5tstUf/uFEC5VWy3de86qKDkpV+eOa6O2\nN5z0p5y50J/nElVlf7Ar0WIVRZlcM+/AT6EH4WzZBrsi+DQZcig1R31Voeu+dUxeMTq98+Pz\nNqeardbc1J/nP+akvxU4bga73IG+eRf/hQ7/LMeat9gjq59Q55x2JP52NRcb7Ky5qeoM/q3y\njlaWLtgJIXQ6/V0PjJ8954MP3nvrhtl6T1VX2R4y9LPsm5X/+W6bmzM7ZVlvLdz+YFeiXWxb\nXvXWj2w7fsWiKDkp0a/1r622T468cdu9DmgXwQ6oFApPE//kEdz7b5ts0b1a3u+rb/M3bRdl\nMce38sjrglCz83dqu+0JWcn2JKxkG+xePGB7lCt3bI28qORWfbhsKvTnuURV2R/sSrqy5Rvs\nfJqNjMr4x4YqZN2tOWpcDh/9jzO/6x8OV2eWwS7t6qdqy9r4TNuZB9w81hjywNbb1Vx8sLOk\nqTOUPdj1mr/fdtlLlixZvHjx4sWLdyRm3WzLXj7p1uHGqznqkbUSBLsS7WLb8n5Nyr61LteX\nq+33/3nldhsQ0DA6TwCVyz+HO4m/FHVy8+I3ItychBCpF37qdd97crbczDM/38iSj1u8OdJ2\nCXqjz5sdA+TjGydv/c51fm2bekJWmrDmp8ZuhXeNN7rUfqOl7XVUhqcm5/XbyEz4Pvc2QbQU\nVdnDQYu1X8Lh5U3q3nswzVzEPBlxa85n5Q2DPGRWZ9tJXV4bmW/mG0e/Vx8/4GuyvXvEuoS8\nEVUSDu4sdcG5mZHq4yqhHkXMWSydTr9kQgvbhtGjR48ZPbJVXd/jX7w98ZHhXe9qFejtMfLj\nMo2rUupdrDdW7eJ1qye1i0d79bFirsQ33wAchmAHVC5yuBNVYN36PcfM2LQkb4iT2D3Tt97I\nFkJYss6pLwkq8Mvt3bSqfGD7A68zeMz5vLv61OTTb37vWrcrw8m9Sb6rw7xbessHijUnKdda\n8CWlq8oeDlpsQfkO7yXHxSz+b96F+RnXdk4oMruYbS5rU48wSa4+9+ebOe1CmihObsZpe+su\nIOP6t+rjGj1rlHo5QgidwdPP6R+/FMmnv+/ewK/J3X0nT5u1aNXPGS4B/ca+8Mmn95TlXcqw\ni//Z+0THjxr+v2McO+BfwKftXUJskY//F5/Ro5qLwfXWOdPL59NEvWq28984kSwfGF1uXXJk\nNcdNGLNFfZqZsOHhFVFLR4QW+o7mjOPWf/7ll3w8b5kGZz9fp8J/PktRlT0ctNhiefoGjXl1\n87R3XGNzLEKIS/+7IKY1vd3MOsOtAfMOp5sH2/QDsJpj883sFpg3s05nWP/TRqfCxpkzOJc+\nkB2ec+uI4MCeNQtML9GhrH8Up+Qm3d9uxO7kbCFE88mfbX//UW8nvRAi7vAD/yldrUKIitvF\ngPbwxw3wL5D49171cbCrUQhhNEV0qZrXcfXQzDW2M1tzE2f8lnfdmGfYcLV941NdN13/x0B0\nq8Z33Zlc+I2ecrMuvHo4wXapCz/Ku1NtlcApt6uzFFXZw0GLtYvO2MjNST7MvnGxiBldq/VQ\nH3/7xm7bSZHL5+SbuVrTvJkVxeLS/p6eNrq0btm8efPmzZs3a5p/zEI7ZVzdMuzLMzer6v7U\nzcsNdTfHKTanH7FNdtk3SnBoMPXSu7tvfmZenjXa+2bEP7ekTIdLK3IXA9pCsAMqF8Wanmzj\nekzULyvn9Bu5TU41uNSccLMTw5vj8374r+9/bvArq+QFRZasmJlD2u5Lzbv7+6D38s4kxv89\n54FPj8vH9879ubWHsxAiN+vi4B6vF35WVYh3u/Vd8/dlIYQlK37BE3d/cjFv6Nou74woov4S\nVaXKvJpZ5FYp5WLLRaY1LwVZzHFFzObs2bmPd95RutNfDZzy6a9ZViEU8/5Vr3Z9dle+mT1q\nPtnp5jiCTz67zOb2DOvqBdYMCAgICAgYvCLKnvIsOWnqp+XqxbMbFr/dsdHAazl5o/52fv0j\n9bYTng085QNz5tkH528xK0II6/nd/3u456eFLfh2b3fr6OPS9XlZ/8qfix9ceKroF1bmXQxo\nSkX12gBgy84vbKuXbnWBNGec7nSzI6EQwtmzRouWDT1tTpL6d3hB9k60ZF/u6p03p8mnZ0qu\nNXL5IHW2QV+cUJd5axw7Xd5hqip+gSab0TqqBA1Nzs0bzaLQvo32V6UoShP3vHdxcm/4yKOP\nv3fytuNTlGixSml7xRY6c3vPvATmEXhrhLZC1/3YB/fY7iyjycevilO+PaiOYxe5fIza6B1x\n14gxjwzq3bHKzWHbPGoPTDBbCxYj2faKLULV8PGZNhslKXKW7VSDs4eXySiE0OluXU5Z6ADF\ntm+dnfyn7egtwY1aNQ0LNPxzmOVzmbfG5Sl0F5f9k3O78nKzzqvzFz3eNaBVBDugUrDndzq8\n98w0yz9+7FPO/dgl0L3QmYPueeJsZt4IHd+Ora+2T9h6SVEUxZqtjjprcA7YenPEDZsRMQa9\n17tOvmW6+rTdeiVdfffb3T/AzqoURVnZ9x9vUfQvsf2LVco12I3yy3tTF88O6rBtha67NTf5\n0S6FXATWYNR/1ce2d55Y/VKfgjMLIXyaDNmtjiRSGHuCnXfjB4+k5OR74Vu98u9Tnd7lya9e\nUZ8WG+wURfn+ieb5FuLsUX/WgoHq0we/uTWySaG7uOyfHIIdcDsEO6BSuN3Ps8HZ5O0f3LnX\nsHkrfrUU9kJLTtyq96f36dzUz9vTaHTx9g+6u+/ID1b/oR7uid39ml69w0HEU2owjN09TX0X\nn6ZPy/lthzqzWtK+mPFoo9r+rk6uAbUbPvz025FpxY3lZndVUm7muekP9wzyrqLXGz19a0/9\n5w3TSrGyqnIMdjvG3Bogt8OMA8Wtu2XvDwtH9787qLqX0dk9qF67qXO+z0g7oc5sG+wURTn3\n+4rHhvYIDvB1cXKtGdKgS8/Bby/amFnonrZxu2BncHL2qRHStf/ItxdvzSrseJ/Vkvb1G5Pa\nNAhyczG4V63e8r7hX/1+qdhbihVYivn7uc+0axBkcnIJadx+xOMvHEzIyrrxs/PNI3nufqPU\neQvdxWX/5BDsgNvRKXafAwKgeTseqNv1h/NCCDffIelx3xY7PwCgUqHzBAAAgEYQ7AAAADSC\nYAcAAKAR3HkCwC1eDVp3ig8UQrhULeXouACACkTnCQAAAI3gVCwAAIBGEOwAAAA0gmAHAACg\nEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGGCu6gH+B5OTkJUuWZGZmVnQhAACgUjCZ\nTGPGjPHy8qroQvIj2BVv+fLlTz31VEVXAQAAKhGj0fif//ynoqvIj2BXPLPZLIT48ssvmzVr\nVtG1AACACnb48OHx48fLeFDZEOzsFRER0apVq4quAgAAVLCsrKyKLuG26DwBAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAA\nQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMI\ndgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAA\nABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpB\nsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMA\nANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAI\ngh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0A\nAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBG\nEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwA\nAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0\ngmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAH\nAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACg\nEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAA\nQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMI\ndgAAABpBsAMAANAIgh0AAIBGEOzutF9//XXTpk0VXQUAANAgY0UX8P/LO++8M3/+/IyMjGnT\npgkh5L8AAADlgmB3R7344ou2Dwh2AACgHHEqFgAAQCMIdgAAABpBsAMAANAIgh0AAIBGlLjz\nhCU7LfZabGxsoktV34CAAG9PkyPKAgAAQEnZGeysh7d9+/1PW7dv37772EWroqgTqtSI6Nqt\nW/fuPYc/1Le6M8f/AAAAKkwxwU6xpP7w+dx5H87//XSi0dW7Wdt2458Y4Ovj4+PtZU67kZCQ\ncOX8qb3bvlm/7JNnJ9d5aOLkZ198sqmPy50pHQAAALaKCnaX/lg88pEpexJ8Bo6YtOHrEd3b\n1Xe9zSG5+PN/f79q2dJv3m05/4Mn3v583tQ+BodUCwAAgNsq6uRp/f5vtZ60KDb+3OpPXuvb\n4bapTgjhG9Li8Zfm/nHy+t9rXz2/ZPx/IpPKv1IAAAAUqagjdmeunajpUrJDb03uf/TH+8dd\nM5etKAAAAJRcUUfsik51WXFH169e+ev+07lKvin6ACd6UQAAANxp9icw5bu3JrZvEvrFtXQh\nRGr0NxG1Ww4YPuLeNvXr3jPlRoFwBwAAgDvM3mB3+osBQ6d/tv9MokmvE0J82u+ZS2aXKbM/\neP7hljG/z+/3/jFHFgkAAIDi2Rvs3vrvL87uTffHxo7yc7NkX5h14kZQj6UfTp/67jf7R/i5\nHfrgA4dWCQAAgGLZG+zWJmT6tny7eVVnIURK9PsZFmvbmR2EEELoxrb0zUxY57AKAQAAYBd7\ng52LTiduXkcX9eVvOp3umSbe8qklVxFKriOKAwAAgP3sDXajA9zjD78cnW1RLCmvLDrr5vdw\nBw9nIYQ158qMvbEuVbs5skgAAAAUz95gN3negJzU/Q1DmrRrVOenxMy2L70ghLi0cU6/Nk0P\npOY0GP+SI4sEAABA8ewNdsGDvtn+0cRa+qsHosyth874YXJDIcSVn7/56UhCw/uf2fJ6K0cW\nCQAAgOIVdeeJfLo+ufDUkwvNinDS5bVEPPbp/olhrSL8HVIaAAAASqKoYBcVFVXMq10Cqoq0\nqKg0IURoaGg5lgUAAICSKirYhYWF2b8gReHmEwAAABWpqGA3depU26fnNi9efyrJqUrQPd06\nhwb5pMVeOLLn1yOX0uoNeGn6AxEOrhMAAADFKCrYfWBzP4nre14P+ii5zeMfbpg/2d/5ZpcL\nJXvlzH4j35pz4dkYh1YJAACAYtnbK3beQ3OdvAft/HTKrVQnhNC5PDR782g/l/dHvuuQ6gAA\nAGA3e4PdostpXvXGO+sKTtGPaFQt/do35VoVAAAASszeYOdp1KXH/FbopN+jUvVOvuVXEgAA\nAErD3mD3YlOflJh3nlxxNF/7sZVTZ0cn+zR9obwLAwAAQMnYO0DxQ//78L91R348qtneVWOH\n97m7jl+VtOvRf/y0+qsN+wzOAfO+G+bQKgEAAFAse4Ode+Cwo39aHhrz1M8bvtq34Su13a9x\nz3lfLxsW6O6Y8gAAAGCvEtxSzLf1iG3HHzq9b8fuv08lpGS5V/Vr1KpD5xbccAIAAKBSKEGw\nE0IIoYto0zWiTVeH1AIAAIAysLfzBAAAACo5e4OdYkn7/PkHGwVXN92GQ6sEAABAsew9Fbvz\nuc4T5h0yuPi1bNvBy8Xg0JoAAABQCvYGu2lfnXSu0vzPc7tbV3d1aEEAAAAoHbtOxSrWzH2p\nOXUGfESqAwAAqLTsC3aWdEUIxWp1dDUAAAAoNbuCnd7J97W2fhfXTzmWZnZ0QQAAACgde6+x\ne+GXHWe6d2vfoOvLr07p2LRBQLX83WBDQxmpGAAAoCLZG+yc3BsKIYS4Om38zkJnUBSlnEoC\nAABAadgb7CZPnuzQOgAAAFBG9ga7+fPnO7QOAAAAlFFJ7xUrYk78tffvk3FJ6a5ePvWbt+/Q\nuI4jygIAAEBJlSDYJR75fszYp348eMm2MbBl3wVLvhnYuFp5FwYAAICSsTfYZcatb9FuWEy2\ntV2/RwZ0a1erukdG4uW/fv5h8fqNQ9u03hBzvJcvYxcDAABUJHuD3YaHJsVkKzPXnX6tX5ja\n+PjkF17aOCui32uPj/zx4pYhjqkQAAAAdrFrgGIhxNt7r1cNf8s21UmhfWa9V987dtdb5V0Y\nAAAASsbeYHc2M9czvGWhk5o38MrNPFt+JQEAAKA07A12rTycEg+tLXTShv3xzh5tyq8kAAAA\nlIa9we7lB+qkXv74gTfX5f7jBhOWH98Z+v7FlDoPzHBAbQAAACgBeztP3L3g+3s3tv1hxkC/\nr9v17dYu0MctI+HyX9t/3BN5w1T93v8tuNuhVQIAAKBY9gY7o1ujzWf3zZry7MIV25Z+tlc2\n6p28eo6eNnf+a43cSjzQMQAAAMpXCQKZs2fDNxdvmr0o5eTR0/HJmSYvn4jGDTyd7D2ZCwAA\nAIcqyZE2JXvb0k+3nQx89628Iet6Dx7VueeDUx7t567XOaQ6AAAA2M3e421W8/XH29fuMWbq\np8v+Uhu3rF0xfcKA4DaPXDNbHVMeAAAA7GVvsDs4q/cXf11vM/qNrT+/oDYmxRx97/HO8Qe/\n6TFtt2PKAwAAgL3sDXavfXbC3W/U7iUz2kf4qo0egY2e/ezXiTWqnF38mmPKAwAAgL3sDXa/\nJWd7Nx9tKGwJQ9v45qTsKs+iAAAAUHL2BrsGbk5pFw4VOunI2VSjW0T5lQQAAIDSsDfYzepd\nK+nsi9PWHM3Xfnr9y8+dSqzRZWZ5FwYAAICSsXe4k26L1nT8ueO7w5r++Mmg/t3aBflWyUqO\nPfjrjyu3/m10a7Rk2f0OrRIAAADFsjfYObm3+PnUn9Mem7xw3dq3f/tebW/YddT8rxZ28XJx\nTHkAAACwVwkGKHbxaTHv+z/fjr+wZ9/Ra4kpzh7e9Zu3b1i7muOKAwAAgP1KfI9XV9/ge+4P\ndkAlAAAAKJOSBTtrbuKubTuOnLmQnJb50oyZ6ReiTcF1uFksAABAZVCCVHZ1xyfta9Xq3HvI\npKnPTZ/5XyHEoVd7eoe0+WjrRYeVBwAAAHvZG+zSLq1u0WvKgXjnEVNnzn6moWwM7D3Y+/rh\np/s0+fp8isMqBAAAgF3sDXZrhk2Ns7guOXJ++QevP9wjUDYGD519+Nh3nrZ/DX0AACAASURB\nVCJt+og1DqsQAAAAdrE32L3zd4J3ow9HNaiar90jpP+Cxr4JR+aWd2EAAAAoGXuDXazZ4h4U\nXOikGrXdLDlXyq0iAAAAlIq9wa5XNdf4A0uUQqZYF++Nc/HqUp5FAQAAoOTsDXbTn2mRHru0\n+7Sv0q026U4xr511/9LY9HrjZjikOgAAANjN3nHsmjy/cfK6iAXvjvdb+k7r4BtCiMfGjjy2\nc+OeyGSv8KE/vtHakUUCAACgePYesdMZvD7aGbn49Umhxuu/744TQixavOLQjWojnpl74tiq\nIGeDI4sEAABA8Upw5wmdocqYmQvGzFyQeCU6NjHNxdM7uHYNbjsBAABQSZQmmHnXrNOgcaOa\npvgfV6/8df/p3MK6VAAAAOAOsz/YKd+9NbF9k9AvrqULIVKjv4mo3XLA8BH3tqlf954pNwh3\nAAAAFc3eYHf6iwFDp3+2/0yiSa8TQnza75lLZpcpsz94/uGWMb/P7/f+MUcWCQAAgOLZG+ze\n+u8vzu5N98fGjvJzs2RfmHXiRlCPpR9On/ruN/tH+Lkd+uADh1YJAACAYtkb7NYmZPq2fLt5\nVWchREr0+xkWa9uZHYQQQujGtvTNTFjnsAoBAABgF3uDnYtOJ25eRxf15W86ne6ZJt7yqSVX\nEUquI4oDAACA/ewNdqMD3OMPvxydbVEsKa8sOuvm93AHD2chhDXnyoy9sS5VuzmySAAAABTP\n3mA3ed6AnNT9DUOatGtU56fEzLYvvSCEuLRxTr82TQ+k5jQY/5IjiwQAAEDx7A12wYO+2f7R\nxFr6qweizK2HzvhhckMhxJWfv/npSELD+5/Z8norRxYJAACA4pXgzhNdn1x46smFZkU46fJa\nIh77dP/EsFYR/g4pDQAAACVRgmAnqalOCOHVsCNH6gAAACqJok7Fthk4eduJxBItzpx2fsGL\nD087n1y2qgAAAFBiRQW7SY3j+jet0WXoxMUbdmVYi7lpWPTBbW9MfTjMP+LDv73G+LuXa5EA\nAAAoXlGnYh95Y3X/hza/NH3W4wM+n1i1Tue7O7bv0L5V43BfHx/vap7mtKSEhIQr50/u2b17\n967fDp6N82/a/YUlO58Z0vaOVQ8AAABVMdfYeTfq9dm6XnPO7fnk48++37jljXXLC85j8q17\nb/ehqz6bNOzeho4pEgAAAMWzq/OEZ932L85t/+JckXLp5M4Dx69evRZ7PdHFyzcgICC4QYsO\nTUPsHTQFAAAADlOyXrGeQQ16BzVwUCkAAAAoC461AQAAaATBDgAAQCMIdgAAABpBsAMAANAI\ngh0AAIBGEOwAAAA0gmAHAACgEfYGO8WS9vnzDzYKrm66DYdWCQAAgGLZO0Dxzuc6T5h3yODi\n17JtBy8Xg0NrAgAAQCnYG+ymfXXSuUrzP8/tbl3d1aEFAQAAoHTsOhWrWDP3pebUGfARqQ4A\nAKDSsi/YWdIVIRSr1dHVAAAAoNTsCnZ6J9/X2vpdXD/lWJrZ0QUBAACgdOy9xu6FX3ac6d6t\nfYOuL786pWPTBgHV8neDDQ0NLe/aAAAAUAL2Bjsn94ZCCCGuThu/s9AZFEUpp5I0S6/Pf3xU\np9Pd+TLkm95ufxWcqtPp9Hq90Wg0Go1ubm41a9asX7++s7NzTExMSkqKl5eXv79/VFTUqVOn\nMjMzhRB6vV4uxGg0BgUFDRw48Pr161u2bElISLBYLEajsXr16j179nz88cfbtGmjKMq2bdtW\nrFhx8uRJs9lsMpkURYmPj4+Li8vKyhJCmEym8PDwCRMmNGjQYPny5Xv37r1y5Yqcs06dOm3b\ntjWZTPv3779+/bqTk5NOp7t69eqNGzcURalatWrv3r2ffvrpevXqbd26deXKlSdPnrRYLCEh\nIR4eHufPnz916lRGRobZbM7JybFarXJNTSZT7dq1U1JSEhIScnNzDQaDi4uLh4dH9erVq1Wr\n1rlzZ29v799///3ChQtOTk5+fn5nzpy5cOGC2WyWr/X39/f09HR1dW3btu3YsWObNWtW6t0U\nFxe3aNGiX375JTEx0cPDo02bNu7u7vv27bt27ZrJZGrbtu2jjz7asGHDfK/avn37nDlz9u7d\nm5qaarVaZVUtW7acPXt2586di3i7c+fOffHFF7t27UpLS/Px8enevfu4ceMOHjwod01ubm5E\nRMQDDzzQpUuXWbNmrV+/PikpSafTBQYGPvbYY08++aSzs3O+BSqKsmnTplWrVp06dcpqtUZE\nRAwZMmTAgAEFvwX5ZGdnL1++fMOGDRcvXnR2dm7evPkjjzzSrl27Il6yY8eO5cuXHzt2zGw2\nh4WFDRgwoHfv3itXrvzpp5+uXLni4uLSpk2bcePGlWV35HPo0KFXXnll9+7d6enpTk5O9erV\ne/rpp4cNG1Zw7TIyMpYuXbpkyZIzZ85kZ2ebTKYWLVqMGzdu8ODBRqO9//3mY7Va169f/913\n3506dUqv19evX3/YsGG9e/eukP9Pipaenr506dKffvrp8uXLLi4urVu3HjduXPPmzSu6rsoi\nJydn9erV69evP3funJOTU9OmTR9++OGiv6qOoCiK+p+k/LIPGjTogQceMBg0MgKG1WrduHHj\nmjVrTp06JYSoX7/+gw8+2KdPn2L/O/q3UuwzuTh2LuffaN68eUKInTt3lnoJXl5eFb2fy5+T\nk1NwcHAR3/xif2YmTpzYr18/+TgwMNDFxaXYN7X9HqqPnZ2da9Soob6dTKLyscFgUNNP7dq1\nAwMDi32LQul0Ojc3N3WZoaGhrq6FdyTS6/W+vr7yJdOnT7daraX4wGzYsKFq1apCCA8Pj7Cw\nMA8PD3VNw8LCqlevLst4/fXX1ZdkZGQ88MADRazC8OHDLRZLoW+3YMECmcx8fHzCwsKqVKki\n30vdbnXr1pWbVN2wRqNR3fWBgYHnz5+3XWBKSsr9998vN0KdOnVCQkLkC++55574+PgiVvz0\n6dMNGjQQQjg5OYWFhdWoUUO+xcSJE3NzcwvOn5WVNXz4cDlPUFBQaGiorEp+llxcXMLCwvz9\n/WUlL774Yul2hy2r1fr000+rW9VoNKofvNatW+dbuyNHjtStW1ed2fbL0q5duytXrpSigPj4\n+HvuuUfui5CQkDp16sgCevXqlZycXMa1K1+HDh0KCQkpuCNeeOGFsu8IDTh//rzMuEajMTQ0\nVP3fafTo0Tk5OXesjLS0tP79+xf8snfs2DE2NvaOleE4N27c6N69u/zsBQcHBwcHy69M9+7d\n5VGA0tm5c6cQYt68eeVYanmxN9j9f1b2YFfEz+2/i5pmIiIihBAywUg6nU4egahWrVrBF+p0\nurfeeishIWHRokVubm46nU79kRs5cuTZs2cbN26s1+vlYoUQHh4emzZtGjx4sO276HS66tWr\nr1mzJikpadq0aWqLXJpOp3N1da1Vq5YQ4ssvv9y0aZMaCzp06BAdHX3+/PmqVau6urrKb7Wa\nUZycnNSn6o+0k5OTwWCQYU4NagaDwcvLy2g09unTR84mh+aWY3R37NhRNnp6eu7du/euu+4S\nQrz99tsl/bT89ddfLi4ufn5+a9asMZvNsmyTyeTn56fT6X744QdFUfbs2dOqVSshxPz58+Wr\nHnroIdut/dRTT0VHRz/55JNqixBiypQpBd9u5cqVOp2ufv36O3bskD+3OTk5rVu3FkIYDIbN\n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\nsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQ\ndgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDC\nDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELY\nAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7\nAIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEH\nABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewA\nAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0A\nQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMA\nCELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAA\nQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAg\nCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAE\nIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAg\nhB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABBE\nSWsvoM1YtGhRu3btdvBBqqurb7vttt13372oSFK3rLq6utdee22vvfYy6hZlzpkx6myYczbq\n6uqWLFkyffr00tLS1l7L9li0aFFrL2GrhF3T6i+7GTNmtPZCACCOW265pbWXsEM+nVUq7Jo2\nderUmpqaysrKHX+ohQsXzp49e/To0bvvvvuOPxqNWLJkybx584y6pZlzZow6G+acjfo5T5ky\nZejQoa29lu3Uvn37qVOntvYqGpInQ3PmzEkpzZkzp7UXEp9RZ8OcM2PU2TDnbJhzy/EaAgCA\n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\nghB2AABB/H+yvt9OdpVRfgAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "boxplot(all_trips_cleaned$ride_duration,\n",
    "        main = \"Boxplot of Ride Duration\",\n",
    "        ylab = \"Ride Duration (seconds)\",\n",
    "        horizontal = TRUE,\n",
    "        col = \"skyblue\"\n",
    "       )"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "6a4499c1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:05.913084Z",
     "iopub.status.busy": "2025-08-14T02:41:05.911862Z",
     "iopub.status.idle": "2025-08-14T02:41:06.051517Z",
     "shell.execute_reply": "2025-08-14T02:41:06.049686Z"
    },
    "papermill": {
     "duration": 0.161798,
     "end_time": "2025-08-14T02:41:06.053621",
     "exception": false,
     "start_time": "2025-08-14T02:41:05.891823",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. \n",
       "       1      328      537     1184      910 10632022 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>0%</dt><dd>1</dd><dt>1%</dt><dd>69</dd><dt>2%</dt><dd>119</dd><dt>3%</dt><dd>139</dd><dt>4%</dt><dd>154</dd><dt>5%</dt><dd>167</dd><dt>6%</dt><dd>178</dd><dt>7%</dt><dd>188</dd><dt>8%</dt><dd>197</dd><dt>9%</dt><dd>207</dd><dt>10%</dt><dd>215</dd><dt>11%</dt><dd>224</dd><dt>12%</dt><dd>232</dd><dt>13%</dt><dd>240</dd><dt>14%</dt><dd>247</dd><dt>15%</dt><dd>255</dd><dt>16%</dt><dd>263</dd><dt>17%</dt><dd>270</dd><dt>18%</dt><dd>277</dd><dt>19%</dt><dd>284</dd><dt>20%</dt><dd>292</dd><dt>21%</dt><dd>299</dd><dt>22%</dt><dd>306</dd><dt>23%</dt><dd>313</dd><dt>24%</dt><dd>320</dd><dt>25%</dt><dd>328</dd><dt>26%</dt><dd>335</dd><dt>27%</dt><dd>343</dd><dt>28%</dt><dd>350</dd><dt>29%</dt><dd>358</dd><dt>30%</dt><dd>365</dd><dt>31%</dt><dd>373</dd><dt>32%</dt><dd>381</dd><dt>33%</dt><dd>388</dd><dt>34%</dt><dd>396</dd><dt>35%</dt><dd>404</dd><dt>36%</dt><dd>412</dd><dt>37%</dt><dd>420</dd><dt>38%</dt><dd>428</dd><dt>39%</dt><dd>437</dd><dt>40%</dt><dd>445</dd><dt>41%</dt><dd>454</dd><dt>42%</dt><dd>462</dd><dt>43%</dt><dd>471</dd><dt>44%</dt><dd>480</dd><dt>45%</dt><dd>489</dd><dt>46%</dt><dd>499</dd><dt>47%</dt><dd>508</dd><dt>48%</dt><dd>518</dd><dt>49%</dt><dd>528</dd><dt>50%</dt><dd>537</dd><dt>51%</dt><dd>547</dd><dt>52%</dt><dd>558</dd><dt>53%</dt><dd>568</dd><dt>54%</dt><dd>579</dd><dt>55%</dt><dd>590</dd><dt>56%</dt><dd>602</dd><dt>57%</dt><dd>613</dd><dt>58%</dt><dd>625</dd><dt>59%</dt><dd>637</dd><dt>60%</dt><dd>650</dd><dt>61%</dt><dd>663</dd><dt>62%</dt><dd>677</dd><dt>63%</dt><dd>691</dd><dt>64%</dt><dd>706</dd><dt>65%</dt><dd>720</dd><dt>66%</dt><dd>736</dd><dt>67%</dt><dd>753</dd><dt>68%</dt><dd>769</dd><dt>69%</dt><dd>787</dd><dt>70%</dt><dd>804</dd><dt>71%</dt><dd>823</dd><dt>72%</dt><dd>844</dd><dt>73%</dt><dd>865</dd><dt>74%</dt><dd>887</dd><dt>75%</dt><dd>910</dd><dt>76%</dt><dd>934</dd><dt>77%</dt><dd>960</dd><dt>78%</dt><dd>988</dd><dt>79%</dt><dd>1017</dd><dt>80%</dt><dd>1048</dd><dt>81%</dt><dd>1081</dd><dt>82%</dt><dd>1117</dd><dt>83%</dt><dd>1155</dd><dt>84%</dt><dd>1196</dd><dt>85%</dt><dd>1240</dd><dt>86%</dt><dd>1288</dd><dt>87%</dt><dd>1338</dd><dt>88%</dt><dd>1392</dd><dt>89%</dt><dd>1452</dd><dt>90%</dt><dd>1517.5</dd><dt>91%</dt><dd>1592</dd><dt>92%</dt><dd>1677</dd><dt>93%</dt><dd>1771</dd><dt>94%</dt><dd>1885</dd><dt>95%</dt><dd>2024</dd><dt>96%</dt><dd>2201</dd><dt>97%</dt><dd>2465</dd><dt>98%</dt><dd>3023</dd><dt>99%</dt><dd>4629</dd><dt>100%</dt><dd>10632022</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[0\\textbackslash{}\\%] 1\n",
       "\\item[1\\textbackslash{}\\%] 69\n",
       "\\item[2\\textbackslash{}\\%] 119\n",
       "\\item[3\\textbackslash{}\\%] 139\n",
       "\\item[4\\textbackslash{}\\%] 154\n",
       "\\item[5\\textbackslash{}\\%] 167\n",
       "\\item[6\\textbackslash{}\\%] 178\n",
       "\\item[7\\textbackslash{}\\%] 188\n",
       "\\item[8\\textbackslash{}\\%] 197\n",
       "\\item[9\\textbackslash{}\\%] 207\n",
       "\\item[10\\textbackslash{}\\%] 215\n",
       "\\item[11\\textbackslash{}\\%] 224\n",
       "\\item[12\\textbackslash{}\\%] 232\n",
       "\\item[13\\textbackslash{}\\%] 240\n",
       "\\item[14\\textbackslash{}\\%] 247\n",
       "\\item[15\\textbackslash{}\\%] 255\n",
       "\\item[16\\textbackslash{}\\%] 263\n",
       "\\item[17\\textbackslash{}\\%] 270\n",
       "\\item[18\\textbackslash{}\\%] 277\n",
       "\\item[19\\textbackslash{}\\%] 284\n",
       "\\item[20\\textbackslash{}\\%] 292\n",
       "\\item[21\\textbackslash{}\\%] 299\n",
       "\\item[22\\textbackslash{}\\%] 306\n",
       "\\item[23\\textbackslash{}\\%] 313\n",
       "\\item[24\\textbackslash{}\\%] 320\n",
       "\\item[25\\textbackslash{}\\%] 328\n",
       "\\item[26\\textbackslash{}\\%] 335\n",
       "\\item[27\\textbackslash{}\\%] 343\n",
       "\\item[28\\textbackslash{}\\%] 350\n",
       "\\item[29\\textbackslash{}\\%] 358\n",
       "\\item[30\\textbackslash{}\\%] 365\n",
       "\\item[31\\textbackslash{}\\%] 373\n",
       "\\item[32\\textbackslash{}\\%] 381\n",
       "\\item[33\\textbackslash{}\\%] 388\n",
       "\\item[34\\textbackslash{}\\%] 396\n",
       "\\item[35\\textbackslash{}\\%] 404\n",
       "\\item[36\\textbackslash{}\\%] 412\n",
       "\\item[37\\textbackslash{}\\%] 420\n",
       "\\item[38\\textbackslash{}\\%] 428\n",
       "\\item[39\\textbackslash{}\\%] 437\n",
       "\\item[40\\textbackslash{}\\%] 445\n",
       "\\item[41\\textbackslash{}\\%] 454\n",
       "\\item[42\\textbackslash{}\\%] 462\n",
       "\\item[43\\textbackslash{}\\%] 471\n",
       "\\item[44\\textbackslash{}\\%] 480\n",
       "\\item[45\\textbackslash{}\\%] 489\n",
       "\\item[46\\textbackslash{}\\%] 499\n",
       "\\item[47\\textbackslash{}\\%] 508\n",
       "\\item[48\\textbackslash{}\\%] 518\n",
       "\\item[49\\textbackslash{}\\%] 528\n",
       "\\item[50\\textbackslash{}\\%] 537\n",
       "\\item[51\\textbackslash{}\\%] 547\n",
       "\\item[52\\textbackslash{}\\%] 558\n",
       "\\item[53\\textbackslash{}\\%] 568\n",
       "\\item[54\\textbackslash{}\\%] 579\n",
       "\\item[55\\textbackslash{}\\%] 590\n",
       "\\item[56\\textbackslash{}\\%] 602\n",
       "\\item[57\\textbackslash{}\\%] 613\n",
       "\\item[58\\textbackslash{}\\%] 625\n",
       "\\item[59\\textbackslash{}\\%] 637\n",
       "\\item[60\\textbackslash{}\\%] 650\n",
       "\\item[61\\textbackslash{}\\%] 663\n",
       "\\item[62\\textbackslash{}\\%] 677\n",
       "\\item[63\\textbackslash{}\\%] 691\n",
       "\\item[64\\textbackslash{}\\%] 706\n",
       "\\item[65\\textbackslash{}\\%] 720\n",
       "\\item[66\\textbackslash{}\\%] 736\n",
       "\\item[67\\textbackslash{}\\%] 753\n",
       "\\item[68\\textbackslash{}\\%] 769\n",
       "\\item[69\\textbackslash{}\\%] 787\n",
       "\\item[70\\textbackslash{}\\%] 804\n",
       "\\item[71\\textbackslash{}\\%] 823\n",
       "\\item[72\\textbackslash{}\\%] 844\n",
       "\\item[73\\textbackslash{}\\%] 865\n",
       "\\item[74\\textbackslash{}\\%] 887\n",
       "\\item[75\\textbackslash{}\\%] 910\n",
       "\\item[76\\textbackslash{}\\%] 934\n",
       "\\item[77\\textbackslash{}\\%] 960\n",
       "\\item[78\\textbackslash{}\\%] 988\n",
       "\\item[79\\textbackslash{}\\%] 1017\n",
       "\\item[80\\textbackslash{}\\%] 1048\n",
       "\\item[81\\textbackslash{}\\%] 1081\n",
       "\\item[82\\textbackslash{}\\%] 1117\n",
       "\\item[83\\textbackslash{}\\%] 1155\n",
       "\\item[84\\textbackslash{}\\%] 1196\n",
       "\\item[85\\textbackslash{}\\%] 1240\n",
       "\\item[86\\textbackslash{}\\%] 1288\n",
       "\\item[87\\textbackslash{}\\%] 1338\n",
       "\\item[88\\textbackslash{}\\%] 1392\n",
       "\\item[89\\textbackslash{}\\%] 1452\n",
       "\\item[90\\textbackslash{}\\%] 1517.5\n",
       "\\item[91\\textbackslash{}\\%] 1592\n",
       "\\item[92\\textbackslash{}\\%] 1677\n",
       "\\item[93\\textbackslash{}\\%] 1771\n",
       "\\item[94\\textbackslash{}\\%] 1885\n",
       "\\item[95\\textbackslash{}\\%] 2024\n",
       "\\item[96\\textbackslash{}\\%] 2201\n",
       "\\item[97\\textbackslash{}\\%] 2465\n",
       "\\item[98\\textbackslash{}\\%] 3023\n",
       "\\item[99\\textbackslash{}\\%] 4629\n",
       "\\item[100\\textbackslash{}\\%] 10632022\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "0%\n",
       ":   11%\n",
       ":   692%\n",
       ":   1193%\n",
       ":   1394%\n",
       ":   1545%\n",
       ":   1676%\n",
       ":   1787%\n",
       ":   1888%\n",
       ":   1979%\n",
       ":   20710%\n",
       ":   21511%\n",
       ":   22412%\n",
       ":   23213%\n",
       ":   24014%\n",
       ":   24715%\n",
       ":   25516%\n",
       ":   26317%\n",
       ":   27018%\n",
       ":   27719%\n",
       ":   28420%\n",
       ":   29221%\n",
       ":   29922%\n",
       ":   30623%\n",
       ":   31324%\n",
       ":   32025%\n",
       ":   32826%\n",
       ":   33527%\n",
       ":   34328%\n",
       ":   35029%\n",
       ":   35830%\n",
       ":   36531%\n",
       ":   37332%\n",
       ":   38133%\n",
       ":   38834%\n",
       ":   39635%\n",
       ":   40436%\n",
       ":   41237%\n",
       ":   42038%\n",
       ":   42839%\n",
       ":   43740%\n",
       ":   44541%\n",
       ":   45442%\n",
       ":   46243%\n",
       ":   47144%\n",
       ":   48045%\n",
       ":   48946%\n",
       ":   49947%\n",
       ":   50848%\n",
       ":   51849%\n",
       ":   52850%\n",
       ":   53751%\n",
       ":   54752%\n",
       ":   55853%\n",
       ":   56854%\n",
       ":   57955%\n",
       ":   59056%\n",
       ":   60257%\n",
       ":   61358%\n",
       ":   62559%\n",
       ":   63760%\n",
       ":   65061%\n",
       ":   66362%\n",
       ":   67763%\n",
       ":   69164%\n",
       ":   70665%\n",
       ":   72066%\n",
       ":   73667%\n",
       ":   75368%\n",
       ":   76969%\n",
       ":   78770%\n",
       ":   80471%\n",
       ":   82372%\n",
       ":   84473%\n",
       ":   86574%\n",
       ":   88775%\n",
       ":   91076%\n",
       ":   93477%\n",
       ":   96078%\n",
       ":   98879%\n",
       ":   101780%\n",
       ":   104881%\n",
       ":   108182%\n",
       ":   111783%\n",
       ":   115584%\n",
       ":   119685%\n",
       ":   124086%\n",
       ":   128887%\n",
       ":   133888%\n",
       ":   139289%\n",
       ":   145290%\n",
       ":   1517.591%\n",
       ":   159292%\n",
       ":   167793%\n",
       ":   177194%\n",
       ":   188595%\n",
       ":   202496%\n",
       ":   220197%\n",
       ":   246598%\n",
       ":   302399%\n",
       ":   4629100%\n",
       ":   10632022\n",
       "\n"
      ],
      "text/plain": [
       "        0%         1%         2%         3%         4%         5%         6% \n",
       "       1.0       69.0      119.0      139.0      154.0      167.0      178.0 \n",
       "        7%         8%         9%        10%        11%        12%        13% \n",
       "     188.0      197.0      207.0      215.0      224.0      232.0      240.0 \n",
       "       14%        15%        16%        17%        18%        19%        20% \n",
       "     247.0      255.0      263.0      270.0      277.0      284.0      292.0 \n",
       "       21%        22%        23%        24%        25%        26%        27% \n",
       "     299.0      306.0      313.0      320.0      328.0      335.0      343.0 \n",
       "       28%        29%        30%        31%        32%        33%        34% \n",
       "     350.0      358.0      365.0      373.0      381.0      388.0      396.0 \n",
       "       35%        36%        37%        38%        39%        40%        41% \n",
       "     404.0      412.0      420.0      428.0      437.0      445.0      454.0 \n",
       "       42%        43%        44%        45%        46%        47%        48% \n",
       "     462.0      471.0      480.0      489.0      499.0      508.0      518.0 \n",
       "       49%        50%        51%        52%        53%        54%        55% \n",
       "     528.0      537.0      547.0      558.0      568.0      579.0      590.0 \n",
       "       56%        57%        58%        59%        60%        61%        62% \n",
       "     602.0      613.0      625.0      637.0      650.0      663.0      677.0 \n",
       "       63%        64%        65%        66%        67%        68%        69% \n",
       "     691.0      706.0      720.0      736.0      753.0      769.0      787.0 \n",
       "       70%        71%        72%        73%        74%        75%        76% \n",
       "     804.0      823.0      844.0      865.0      887.0      910.0      934.0 \n",
       "       77%        78%        79%        80%        81%        82%        83% \n",
       "     960.0      988.0     1017.0     1048.0     1081.0     1117.0     1155.0 \n",
       "       84%        85%        86%        87%        88%        89%        90% \n",
       "    1196.0     1240.0     1288.0     1338.0     1392.0     1452.0     1517.5 \n",
       "       91%        92%        93%        94%        95%        96%        97% \n",
       "    1592.0     1677.0     1771.0     1885.0     2024.0     2201.0     2465.0 \n",
       "       98%        99%       100% \n",
       "    3023.0     4629.0 10632022.0 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# The data is extremely right-skewed. The circles on the right suggests there are many outliers.\n",
    "# The entire box (25th to 75th percentile) is compressed around very small values - typical rides are short\n",
    "# We will investigate the outliers by creating quantiles.\n",
    "\n",
    "summary(all_trips_cleaned$ride_duration)\n",
    "quantile(all_trips_cleaned$ride_duration, probs = seq(0, 1, 0.01))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "45809568",
   "metadata": {
    "papermill": {
     "duration": 0.018476,
     "end_time": "2025-08-14T02:41:06.090313",
     "exception": false,
     "start_time": "2025-08-14T02:41:06.071837",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Min: 1 second → You have rides that last only 1 second (likely data entry errors or system glitches).\n",
    "\n",
    "1st Qu.: 328 seconds (~5.5 minutes) → 25% of rides are shorter than this.\n",
    "\n",
    "Median: 537 seconds (~9 minutes) → Half of rides are shorter, half are longer.\n",
    "\n",
    "Mean: 1184 seconds (~19.7 minutes) → The mean is much larger than the median, which indicates the presence of extreme outliers pulling the average up.\n",
    "\n",
    "3rd Qu.: 910 seconds (~15.2 minutes) → 75% of rides are shorter than this.\n",
    "\n",
    "Max: 10,632,022 seconds (~123 days) → Clearly unrealistic, confirming extreme outliers exist."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "2ccb3a77",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:06.128859Z",
     "iopub.status.busy": "2025-08-14T02:41:06.127692Z",
     "iopub.status.idle": "2025-08-14T02:41:07.428986Z",
     "shell.execute_reply": "2025-08-14T02:41:07.427123Z"
    },
    "papermill": {
     "duration": 1.323317,
     "end_time": "2025-08-14T02:41:07.431336",
     "exception": false,
     "start_time": "2025-08-14T02:41:06.108019",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd3xV9f3A4ZOELDZhiIKAq8gUQQSLC6EOFLfWutDaqlWrVK3WUX+OWvfErVXc\nq3Wh4qyjIm7FhagICCLI3iPj/v5IuIQQknOTXIJfn+cPX+Hck8Mn5xxu3t5xbkYikYgAAPj5\ny6zvAQAAqBvCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDC\nDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQ\nwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAg\nEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwo6ayFiHnPwmG2/ec/9j/vri\nF/Pqe8aKZr67T3LOySuK63ucWikpnLGuQ5CRkZGZmdOidcdBB/3p2S/nl/+u+HugaNlXyTX3\nHTerTmZeseC1SqfNzs1r027zwfsfdcXIl1ck6uSvSosN5/z5/tkTMjIyMjOzH/xxSVTTk+EX\nLs4Z/lS31lXs2PI22WH0ep6/vETR3AcffPDBBx8ct6Sw0hUWTf/m1Wcevu/fo7+YPKfSFRZO\nGvnHP/7xwkcnVVi+YOKI0h/wnLdm1PHQpFUCUlfteZWZ1WT4g+Pre8w1zHhn7+R4k5YX1Wwj\nv+7Vs3v37t27dz/yse/qdryUFK/8Mc6/7qzsVnd+OTf5XfH3QOHS8ck1h37yU53MvHz+f6sd\nuKD7IZ8sWFEnf11tVHqU6+T8qb2i5ZN7N86JoqjdbneWLqnZyfALF+cMf7Jrqzg7Noqijfs/\nv57nL++7xw4uHeO8yQsq3FRSNP+q4wZnZ2QkR+2z/1nfr3X2ntGlILNB8//OX772xi/v0yaK\norwWu84qLE7XD0Bd84gdaVFSvOjGo/v+Z+bS+h6kjo3/vMx3c1fU9yzVKy6cffruZ9T3FCmY\n+/nju/Q+cXlJPY+xIR/lMefv/9HilRkZGRfdd1hK3/izOxmIY/qYuwce/dS6bh15ZN+//uuV\nwnL/K/7hU1f22/3i8uv8+Pqfrxk/t9vJTw5slrv2Fk548LQoipbPe32/qz6pu6lJL2FHrRR0\n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\n0uJEIpEoWjrtn4f+Krn81LEzSlde8O3d+at+SfQ6877kq787DBlRfpvJu8goinKb97n/3e9K\nEomVC3+85vd9k8u7njymdOVKwy6lqRKphF38LSd/5UdRlJGR+esDjrv0quuuu/qyeet+oVnM\nK1y07HHwJ4tWJr9r7T3w0rCyYTIyc46//oVFhSUlRYteGfHH7HK/oVf92ivaf9VLJ7c47PaV\nq0b79NE/Jdc8+9PZVeyQasOupGhRcoWN+oxK1DTsKt2NuzbPK71ps0NuX7Fq+DFX9l21fvby\ncjs7ZtildPKUH6/1dse8/MX04kRi5cIpF+/bIbn8lG/nVbEDz10VPTf+sMajJjU6GVI4muXD\nrvPRV3y/YEUiUfzeI6vfSZCRkfW3kW8tK04ULZ9x+T6rf5zn5i5LdS99c3/ZY5mZDZpNX1GW\nHJ9eUXaYcpsNKEpx+FTO8GpUHXbxf8yU7rWqVXXYlRQtuPoPqy93kpGRsf3B505bUZRIJB45\naLMoii77bE6cv2X+pLJH01t2uT3mYNQjYUdNRDE06TTk43JVMbhF2W/WVr3+WX5TxYWz+zQp\ne0fkJjv9O7m8/BOypco/CVuq/F3k3z4sf+9cdOzGZc+JNGx9WOmiSsMu1anih138LZf/lb/n\niA+q3mzZRmL8Lm+5zRETl66xuyrugZKVyWLe6uhR5dd85qjV/6Nf+mtv8Y+3JZc8OXtZ+ZX3\na1n2QMVmB7xUxczVh13x4uQKtQy7tXZjyb333jty5MiRI0e+NnfVYyElKx48efXDPD+uXP3I\nRcywS+nkKT/e6/NXvxuj/C/mvcZMT6xb8unIL9b8V1CDkyGlo5kMu4zMvB9XrN5LXRuWzVPQ\n5abkwnnfnJzc8l0zlqS6lwqXfJafVVYhx7w/s3Th+R2blS7petKY1IZP5QyvVtVhF//HTOle\nq1pVh12pxT9++99Rjz745Ivjp5S95GDRtPuzMzLaDrgmkUgkSlb85/ozdx/Qq1Wjxlv06H/E\nny+fsLiwwhaWz3up9K/Ib3VAzMGoR8KOmkjelax5uZPZ0yaOf2HkPzqvusffqH/ZfVzh0gnJ\nb/nN81MqbO3FPTusfa9R/gnZUuWfhC2VvItskNuhwpNYn1zaZ9Vvo5zSR77W/sVcg6lihl1K\nWy7/JN3MlbHebxjzQZqGbXf8cN2P2C2Z+UDyj+d8N7/89hdMujB5U+mvvakv7V7tX1f1m6Bj\n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\nU+Xrvcu/eaIKzbc6btmqPT7/2wvL35SV06RZfoMoijIyVr82qdILFFf4q1csGFP+8haduvXp\nuWW7rDUvb/vdstUvZK/0KFf65pv4J8+6xitaPim5ftXXu/7ogm1LVxtwx1fll9fsZIh/NMu9\neWJA+c0m3zzR5cTVV6ys8OaJVPdSmZLlvRqv8ZK4Xe5a40eOP3xKZ3jVqn5XbPwfM6V7rWql\n9OaJjy4bEEXRfvd9k1zy3eMHl35vuwFHXHHjDWceMzAzIyOKok33uHuNb7xw1bl351drbZUN\njrCjJqIYthpy/uLiNe6eFn737C7tGlW6cvtd//TNsrL32D9+7NbJ5Se8NC2RSCRKViQvOZuV\n0/alVdc4KPeuyQOvHtKxwjbzWm7/0vQlyb99XZ88EXOqUg/vs8bfUvVv4phbTkfYHdmm7O/N\nbbpD8rJta++BkqIFf9ilkheBdTny78mvy//ae/ScvddeOYqilj0OHju3mkuqxgm7gu6Hfrpw\njbfjXbZnxcOakZn757v/L/nHOGGXSCSe+FOvCtvJabL1hTftn/zjofetfgNspUe50vMn/slT\n+7BbNO2Gsr3d9cbyy2t2MiRiH81ahl1Keynp9WNXPxGckZnz/qKVFVaIOXyqZ3gVqv3kiZg/\nZkr3WtWKH3YrF3+6aW6DRhsdVP6SjYmSwouGbFZhhkYb7/Lxmjv8vI5lj50/MXtp/NmoL8KO\nmqj0ziuKoqyc/IKNOu2052+vf+j1Sq/bUbxy1iPXnrv3Tj3bFDRt0CC3YKP2O+9zxHWP/i/5\nWM/MsRdnJq8p3/m05F3QzLFnr77v7vmX0vXLXw6jpHjxnef9oVuHjfKy89p26HrUXy7/dnGV\nV3FLZaqkomXfnXvUHu0LGmdmNmjaqsPwNT8zrQY/byI9YffasNWXRd3hvA+r3APF7z5169H7\n7ty+dbMGOY3a/6rf8KueWLr4y+SaFX7tfffmQ388ZPdObVvlZudtslmXXfY46PK7nlsW4yIt\n6wq7rOyclhtvttu+R1w+8qXla+3wkuLF9/zj5L5d2jfMzWrUvHXv3xx295vTqv1IsUr++pLC\nJ645vV+X9vnZuZt173/48Wd9NGf58nmvJD8soVGbI5PrVnqU13X+xDx5ah92iUTJAa3yoyjK\nzGoycVn5AWpyMpSKczRrH3bx91LSoqk3JLdT0Pmfla4T+1RM7Qxfl2rDLuaPmdK9VrXih92z\nv+8cRdFf/vdjxRtKlj92zemDd9imoGHDzbtvf/gpl1W4jt3Khe+WXuK4SfuTUpqN+pKRSM9n\nIcN68NoBm+/21KQoihq2OnjJrMerXR9+1ibcOXjr41+Noug3933z0lEVP2aUn4Wf3b3W59f+\nuscZY6MoOuiJSf8+oFN9j0P1vHkC4Odhq2Me7tkoJ4qiMWeen66rnEF5iZXDL/k4iqLc5rvc\nu1/FJ47ZMAk7gJ+HzOzWj4/YPYqipT89+tcP1vl+Z6grP/z3hFfnL4+i6JCR9zaKd/VE6p2w\nA/jZ+NWwxw/ftEkURXcffll9z0LwSs4d9u8oilp0Pnmkh+t+PnzyBD9jzbpst+PsdlEU5Tav\ng4upws9AZt7Nr1z53bB7o2jsQzOWHN628rdhssH6Gd1rLZx029ebdu+/aXTq45dX/nFybJC8\neQIAIBCeigUACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMA\nCISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLAD\nAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISwAwAIhLADAAiEsAMACISw\nAwAIhLADAAhEg/oe4GdgwYIF995777Jly+p7EABgg5Cfnz9s2LBmzZrV9yAVCbvqPfjgg6ed\ndlp9TwEAbEAaNGhw0kkn1fcUFQm76hUWFkZR9K9//Wubbbap71kAgHo2bty44447rjQPNjTC\nLq7OnTv36dOnvqcAAOrZ8uXL63uEdfLmCQCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nCDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBANKjvAagfo0eP/vTTT+t7ivWkXbt2Rx55ZH1PAQBpJ+x+oU466aTJkyfX9xTrz0EH\nHZSfn1/fUwBAegm7X6ji4uIuXbpce+21dbXBvfbaq/wfR48eXVdbrqXrrrvupZdeKi4uru9B\nACDthN0vV05OTvv27dO08fRtOVWNGjWq7xEAYD3x5gkAgEAIOwCAQAg7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACAoslPEAACAASURB\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# The quantiles show that the extreme outliers exist on 100th percentile. Filter extreme rides for clearer visuals.\n",
    "\n",
    "threshold <- quantile(all_trips_cleaned$ride_duration, 0.99)\n",
    "boxplot(\n",
    "    all_trips_cleaned$ride_duration[\n",
    "        all_trips_cleaned$ride_duration <= threshold\n",
    "    ],\n",
    "    main = \"Boxplot or Ride Duration (Removed Top 1%)\",\n",
    "    ylab = \"Duration (seconds)\",\n",
    "    horizontal = TRUE\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "adb3991f",
   "metadata": {
    "papermill": {
     "duration": 0.020356,
     "end_time": "2025-08-14T02:41:07.471032",
     "exception": false,
     "start_time": "2025-08-14T02:41:07.450676",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The dataset has a lot of realistic trip durations, but also some very unrealistic durations (hours, days, or months long).\n",
    "\n",
    "Removing the top 1% (or using another cutoff like >24 hours) gives a clearer picture of actual usage patterns without letting a few anomalies distort the visualization."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "d107aacd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:07.511293Z",
     "iopub.status.busy": "2025-08-14T02:41:07.510111Z",
     "iopub.status.idle": "2025-08-14T02:41:07.837626Z",
     "shell.execute_reply": "2025-08-14T02:41:07.836262Z"
    },
    "papermill": {
     "duration": 0.349787,
     "end_time": "2025-08-14T02:41:07.839939",
     "exception": false,
     "start_time": "2025-08-14T02:41:07.490152",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips_cleaned <- all_trips_cleaned %>%\n",
    "  filter(ride_duration < quantile(ride_duration, 0.99))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a11e4d1",
   "metadata": {
    "papermill": {
     "duration": 0.021967,
     "end_time": "2025-08-14T02:41:07.882088",
     "exception": false,
     "start_time": "2025-08-14T02:41:07.860121",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Inspect the structure of the cleaned dataset."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "18058092",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:07.923096Z",
     "iopub.status.busy": "2025-08-14T02:41:07.921994Z",
     "iopub.status.idle": "2025-08-14T02:41:07.947940Z",
     "shell.execute_reply": "2025-08-14T02:41:07.946140Z"
    },
    "papermill": {
     "duration": 0.048474,
     "end_time": "2025-08-14T02:41:07.949953",
     "exception": false,
     "start_time": "2025-08-14T02:41:07.901479",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [783,827 × 14] (S3: tbl_df/tbl/data.frame)\n",
      " $ ride_id            : chr [1:783827] \"21742443\" \"21742444\" \"21742445\" \"21742446\" ...\n",
      " $ started_at         : POSIXct[1:783827], format: \"2019-01-01 00:04:37\" \"2019-01-01 00:08:13\" ...\n",
      " $ ended_at           : POSIXct[1:783827], format: \"2019-01-01 00:11:07\" \"2019-01-01 00:15:34\" ...\n",
      " $ start_station_id   : num [1:783827] 199 44 15 123 173 98 98 211 150 268 ...\n",
      " $ start_station_name : chr [1:783827] \"Wabash Ave & Grand Ave\" \"State St & Randolph St\" \"Racine Ave & 18th St\" \"California Ave & Milwaukee Ave\" ...\n",
      " $ end_station_id     : num [1:783827] 84 624 644 176 35 49 49 142 148 141 ...\n",
      " $ end_station_name   : chr [1:783827] \"Milwaukee Ave & Grand Ave\" \"Dearborn St & Van Buren St (*)\" \"Western Ave & Fillmore St (*)\" \"Clark St & Elm St\" ...\n",
      " $ member_casual      : chr [1:783827] \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ started_date       : Date[1:783827], format: \"2019-01-01\" \"2019-01-01\" ...\n",
      " $ started_month      : num [1:783827] 1 1 1 1 1 1 1 1 1 1 ...\n",
      " $ started_day        : num [1:783827] 1 1 1 1 1 1 1 1 1 1 ...\n",
      " $ started_year       : num [1:783827] 2019 2019 2019 2019 2019 ...\n",
      " $ started_day_of_week: Ord.factor w/ 7 levels \"Sun\"<\"Mon\"<\"Tue\"<..: 3 3 3 3 3 3 3 3 3 3 ...\n",
      " $ ride_duration      : num [1:783827] 390 441 829 1783 364 ...\n"
     ]
    }
   ],
   "source": [
    "str(all_trips_cleaned)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5d3fe1e4",
   "metadata": {
    "papermill": {
     "duration": 0.018491,
     "end_time": "2025-08-14T02:41:07.987523",
     "exception": false,
     "start_time": "2025-08-14T02:41:07.969032",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Get the statistical summary of the cleaned dataset to understand the data (mainly numeric) distribution."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "bb309241",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:08.027589Z",
     "iopub.status.busy": "2025-08-14T02:41:08.026446Z",
     "iopub.status.idle": "2025-08-14T02:41:08.469886Z",
     "shell.execute_reply": "2025-08-14T02:41:08.468803Z"
    },
    "papermill": {
     "duration": 0.465379,
     "end_time": "2025-08-14T02:41:08.471482",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.006103",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id            started_at                   \n",
       " Length:783827      Min.   :2019-01-01 00:04:37.0  \n",
       " Class :character   1st Qu.:2019-02-28 14:36:29.0  \n",
       " Mode  :character   Median :2020-01-07 08:57:02.0  \n",
       "                    Mean   :2019-08-31 23:32:24.7  \n",
       "                    3rd Qu.:2020-02-19 16:23:39.5  \n",
       "                    Max.   :2020-03-31 23:51:34.0  \n",
       "                                                   \n",
       "    ended_at                      start_station_id start_station_name\n",
       " Min.   :2019-01-01 00:11:07.00   Min.   :  2.0    Length:783827     \n",
       " 1st Qu.:2019-02-28 14:45:19.50   1st Qu.: 77.0    Class :character  \n",
       " Median :2020-01-07 09:08:38.00   Median :174.0    Mode  :character  \n",
       " Mean   :2019-08-31 23:44:17.76   Mean   :204.2                      \n",
       " 3rd Qu.:2020-02-19 16:33:56.00   3rd Qu.:291.0                      \n",
       " Max.   :2020-04-01 00:03:33.00   Max.   :675.0                      \n",
       "                                                                     \n",
       " end_station_id  end_station_name   member_casual       started_date       \n",
       " Min.   :  2.0   Length:783827      Length:783827      Min.   :2019-01-01  \n",
       " 1st Qu.: 77.0   Class :character   Class :character   1st Qu.:2019-02-28  \n",
       " Median :174.0   Mode  :character   Mode  :character   Median :2020-01-07  \n",
       " Mean   :204.2                                         Mean   :2019-08-31  \n",
       " 3rd Qu.:291.0                                         3rd Qu.:2020-02-19  \n",
       " Max.   :675.0                                         Max.   :2020-03-31  \n",
       "                                                                           \n",
       " started_month    started_day     started_year  started_day_of_week\n",
       " Min.   :1.000   Min.   : 1.00   Min.   :2019   Sun: 76588         \n",
       " 1st Qu.:1.000   1st Qu.: 7.00   1st Qu.:2019   Mon:116565         \n",
       " Median :2.000   Median :14.00   Median :2020   Tue:135136         \n",
       " Mean   :2.075   Mean   :14.74   Mean   :2020   Wed:129155         \n",
       " 3rd Qu.:3.000   3rd Qu.:22.00   3rd Qu.:2020   Thu:132230         \n",
       " Max.   :3.000   Max.   :31.00   Max.   :2020   Fri:122747         \n",
       "                                                Sat: 71406         \n",
       " ride_duration \n",
       " Min.   :   1  \n",
       " 1st Qu.: 326  \n",
       " Median : 532  \n",
       " Mean   : 713  \n",
       " 3rd Qu.: 892  \n",
       " Max.   :4628  \n",
       "               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips_cleaned)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dd325bda",
   "metadata": {
    "papermill": {
     "duration": 0.019282,
     "end_time": "2025-08-14T02:41:08.510184",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.490902",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Why the Mean Date is Weird (Aug 31, 2019)\n",
    "R stores dates/times internally as seconds from 1970-01-01.\n",
    "\n",
    "When summary() shows a mean date, it’s literally averaging those numbers.\n",
    "\n",
    "Since you combined 2019 Q1 and 2020 Q1 datasets, the mean ends up roughly halfway between them → which is around August 2019.\n",
    "\n",
    "This does not mean there are rides in August 2019 — it’s just the midpoint of all the dates in both datasets."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5502ccb1",
   "metadata": {
    "papermill": {
     "duration": 0.018778,
     "end_time": "2025-08-14T02:41:08.548031",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.529253",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Your earlier summaries of the individual datasets confirm all trips are inside their respective time frames (Jan–Mar 2019, Jan–Mar 2020).\n",
    "\n",
    "The strange mean date is a mathematical artifact of combining them and calculating an average.\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "0d166da1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:08.588666Z",
     "iopub.status.busy": "2025-08-14T02:41:08.587229Z",
     "iopub.status.idle": "2025-08-14T02:41:08.822353Z",
     "shell.execute_reply": "2025-08-14T02:41:08.821238Z"
    },
    "papermill": {
     "duration": 0.256971,
     "end_time": "2025-08-14T02:41:08.823947",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.566976",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "[1] \"2019-01-01 00:04:37 UTC\" \"2020-03-31 23:51:34 UTC\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "[1] \"2019-01-01 00:11:07 UTC\" \"2020-04-01 00:03:33 UTC\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "range(all_trips_cleaned$started_at)\n",
    "range(all_trips_cleaned$ended_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6ee8a8ab",
   "metadata": {
    "papermill": {
     "duration": 0.019697,
     "end_time": "2025-08-14T02:41:08.863445",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.843748",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Clean reporting code so it produces the full combined summary"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "c0901970",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:08.908136Z",
     "iopub.status.busy": "2025-08-14T02:41:08.906933Z",
     "iopub.status.idle": "2025-08-14T02:41:08.952151Z",
     "shell.execute_reply": "2025-08-14T02:41:08.951057Z"
    },
    "papermill": {
     "duration": 0.069422,
     "end_time": "2025-08-14T02:41:08.953780",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.884358",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>start_min</th><th scope=col>start_max</th><th scope=col>end_min</th><th scope=col>end_max</th><th scope=col>total_rows</th><th scope=col>unique_start_stations</th><th scope=col>unique_end_stations</th></tr>\n",
       "\t<tr><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2019-01-01 00:04:37</td><td>2020-03-31 23:51:34</td><td>2019-01-01 00:11:07</td><td>2020-04-01 00:03:33</td><td>783827</td><td>635</td><td>636</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " start\\_min & start\\_max & end\\_min & end\\_max & total\\_rows & unique\\_start\\_stations & unique\\_end\\_stations\\\\\n",
       " <dttm> & <dttm> & <dttm> & <dttm> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t 2019-01-01 00:04:37 & 2020-03-31 23:51:34 & 2019-01-01 00:11:07 & 2020-04-01 00:03:33 & 783827 & 635 & 636\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 7\n",
       "\n",
       "| start_min &lt;dttm&gt; | start_max &lt;dttm&gt; | end_min &lt;dttm&gt; | end_max &lt;dttm&gt; | total_rows &lt;int&gt; | unique_start_stations &lt;int&gt; | unique_end_stations &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| 2019-01-01 00:04:37 | 2020-03-31 23:51:34 | 2019-01-01 00:11:07 | 2020-04-01 00:03:33 | 783827 | 635 | 636 |\n",
       "\n"
      ],
      "text/plain": [
       "  start_min           start_max           end_min            \n",
       "1 2019-01-01 00:04:37 2020-03-31 23:51:34 2019-01-01 00:11:07\n",
       "  end_max             total_rows unique_start_stations unique_end_stations\n",
       "1 2020-04-01 00:03:33 783827     635                   636                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(dplyr)\n",
    "\n",
    "all_trips_cleaned %>%\n",
    "  summarise(\n",
    "    start_min = min(started_at),\n",
    "    start_max = max(started_at),\n",
    "    end_min   = min(ended_at),\n",
    "    end_max   = max(ended_at),\n",
    "    total_rows = n(),\n",
    "    unique_start_stations = n_distinct(start_station_name),\n",
    "    unique_end_stations   = n_distinct(end_station_name)\n",
    "  )\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "0cce6bd0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:08.995899Z",
     "iopub.status.busy": "2025-08-14T02:41:08.994823Z",
     "iopub.status.idle": "2025-08-14T02:41:09.027289Z",
     "shell.execute_reply": "2025-08-14T02:41:09.026189Z"
    },
    "papermill": {
     "duration": 0.055378,
     "end_time": "2025-08-14T02:41:09.028762",
     "exception": false,
     "start_time": "2025-08-14T02:41:08.973384",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>count</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual </td><td> 43827</td></tr>\n",
       "\t<tr><td>casucal</td><td> 21262</td></tr>\n",
       "\t<tr><td>member </td><td>718738</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3 × 2\n",
       "\\begin{tabular}{ll}\n",
       " member\\_casual & count\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t casual  &  43827\\\\\n",
       "\t casucal &  21262\\\\\n",
       "\t member  & 718738\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3 × 2\n",
       "\n",
       "| member_casual &lt;chr&gt; | count &lt;int&gt; |\n",
       "|---|---|\n",
       "| casual  |  43827 |\n",
       "| casucal |  21262 |\n",
       "| member  | 718738 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual count \n",
       "1 casual         43827\n",
       "2 casucal        21262\n",
       "3 member        718738"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_cleaned %>%\n",
    "  count(member_casual, name = \"count\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "60da40a5",
   "metadata": {
    "papermill": {
     "duration": 0.018674,
     "end_time": "2025-08-14T02:41:09.066660",
     "exception": false,
     "start_time": "2025-08-14T02:41:09.047986",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Methods\n",
    "Tools and Environment\n",
    "The analysis was conducted in R using the tidyverse package for data manipulation and visualization, and the conflicted package to manage function conflicts between packages. Data was loaded into Kaggle’s R notebook environment for processing.\n",
    "________________________________________\n",
    "Data Sources\n",
    "Two datasets from the Cyclistic bike-share program were analyzed:\n",
    "*\t2019 Q1 Dataset (365,069 rows × 12 columns) containing trip IDs, timestamps, bike IDs, trip durations, station IDs and names, user types, gender, and birth year.\n",
    "*\t2020 Q1 Dataset (426,887 rows × 13 columns) containing ride IDs, rideable types, timestamps, station details, coordinates, and member classifications.\n",
    "________________________________________\n",
    "Data Inspection and Standardization\n",
    "Initial inspection revealed differences in column naming conventions, data types, and column availability between the two datasets.\n",
    "*\tColumns not common to both datasets were removed to ensure compatibility.\n",
    "*\tColumn names in the 2019 dataset were standardized to match those in the 2020 dataset, ensuring consistency for merging.\n",
    "*\tData types were aligned across datasets, including converting the 2019 ride_id column from integer to character.\n",
    "After standardization, both datasets contained 8 identical columns:\n",
    "ride_id, started_at, ended_at, start_station_id, start_station_name, end_station_id, end_station_name, member_casual.\n",
    "________________________________________\n",
    "Data Validation and Cleaning\n",
    "Several validation steps were performed:\n",
    "*\tStation Names: Entries in end_station_name containing \"(*)\" in the 2019 dataset were confirmed as valid by matching unique station IDs and names in both datasets.\n",
    "*\tRider Type Labels: 2019 labels \"Subscriber\" and \"Customer\" were replaced with \"member\" and \"casual\" respectively, to match 2020’s member_casual column format.\n",
    "*\tDate Ranges: Confirmed that started_at values fell within the intended Q1 periods for each year.\n",
    "*\tMissing Data: One missing value in end_station_id in the 2020 dataset was removed.\n",
    "________________________________________\n",
    "Merging Datasets\n",
    "The cleaned datasets were combined into a single dataset (all_trips) with 791,955 rows and 8 columns. Post-merge checks confirmed:\n",
    "*\tNo duplicate entries.\n",
    "*\tNo data loss during merging.\n",
    "*\tCorrect row counts matching the sum of the original datasets.\n",
    "________________________________________\n",
    "Feature Engineering\n",
    "New variables were created to support temporal analysis:\n",
    "*\tstarted_date, started_month, started_day, started_year, and started_day_of_week were extracted from started_at.\n",
    "*\tride_duration was calculated as the difference between ended_at and started_at in seconds, then converted to numeric format.\n",
    "*\tTemporal columns (started_month, started_day, started_year) were converted to numeric for ease of analysis.\n",
    "________________________________________\n",
    "Outlier Detection and Removal\n",
    "*\tNegative Durations: 209 rides with negative durations were identified. All were recorded at \"HQ QR\" (Cyclistic headquarters) with identical start and end station IDs (675), and classified as \"casual\". These were likely internal bike quality check rides and were removed.\n",
    "*\tExtreme Durations: The maximum ride duration exceeded 10 million seconds (~123 days), indicating extreme outliers. Distribution analysis showed a heavy right skew, with the top 1% of values disproportionately large.\n",
    "*\tThe top 1% of ride durations were removed to improve visualization and avoid skew in descriptive statistics.\n",
    "________________________________________\n",
    "Final Data Check\n",
    "*\tVerified structure and data types of the cleaned dataset.\n",
    "*\tConfirmed no loss of valid data during cleaning.\n",
    "*\tNoted that the mean date for started_at and ended_at appears as August 29, 2019 in summary statistics due to averaging across two years; the actual date ranges remain correct per min/max checks.\n",
    "________________________________________\n",
    "Status\n",
    "The dataset is now clean, consistent, and enriched with new variables, making it ready for exploratory data analysis and subsequent modeling.\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "bca85ae5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:09.108561Z",
     "iopub.status.busy": "2025-08-14T02:41:09.107326Z",
     "iopub.status.idle": "2025-08-14T02:41:09.150254Z",
     "shell.execute_reply": "2025-08-14T02:41:09.148973Z"
    },
    "papermill": {
     "duration": 0.067094,
     "end_time": "2025-08-14T02:41:09.151892",
     "exception": false,
     "start_time": "2025-08-14T02:41:09.084798",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual </td><td> 43827</td><td>1353.4455</td></tr>\n",
       "\t<tr><td>casucal</td><td> 21262</td><td>1508.5569</td></tr>\n",
       "\t<tr><td>member </td><td>718738</td><td> 650.3815</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & number\\_of\\_rides & average\\_ride\\_duration\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual  &  43827 & 1353.4455\\\\\n",
       "\t casucal &  21262 & 1508.5569\\\\\n",
       "\t member  & 718738 &  650.3815\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | number_of_rides &lt;int&gt; | average_ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual  |  43827 | 1353.4455 |\n",
       "| casucal |  21262 | 1508.5569 |\n",
       "| member  | 718738 |  650.3815 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual number_of_rides average_ride_duration\n",
       "1 casual         43827          1353.4455            \n",
       "2 casucal        21262          1508.5569            \n",
       "3 member        718738           650.3815            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare the Ridership data (Number of Rides and Average Ride Duration) by Rider Type (Casual riders and Annual members).\n",
    "\n",
    "ridership_by_ridertype <- all_trips_cleaned %>%\n",
    "    group_by(member_casual) %>%\n",
    "    summarise(\n",
    "        number_of_rides = n(),                     # Count total rides for each rider type\n",
    "        average_ride_duration = mean(ride_duration) # Calculate mean ride duration (seconds)\n",
    "    )\n",
    "ridership_by_ridertype\n",
    "write.csv(ridership_by_ridertype, \n",
    "          file = \"/kaggle/working/ridership_by_ridertype.csv\", \n",
    "          row.names = FALSE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "dd99494f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:09.198715Z",
     "iopub.status.busy": "2025-08-14T02:41:09.197453Z",
     "iopub.status.idle": "2025-08-14T02:41:09.519121Z",
     "shell.execute_reply": "2025-08-14T02:41:09.517928Z"
    },
    "papermill": {
     "duration": 0.347464,
     "end_time": "2025-08-14T02:41:09.520783",
     "exception": false,
     "start_time": "2025-08-14T02:41:09.173319",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nrqCgoKCgoKVnsWZLp9OlpaUhhPbt2yeTyZaeDq3RokWLMplMYWFhKpVq6blA61JSUtLSUyBO\nXkEDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRG5LTyASlaePbekptID2\nIYQQ0iGkW3giLaDgsutbegoA8HXO2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEIrelJwBtReKpn7T0FFh9sru+0NJTANoiZ+wAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIpG7\nWo6See7+Gx+d/dIHy5L9B25zxElH9kn9kOOubLSmPQoAwBpmdZyx+/dD51wz44Uf7zfm/FMO\nL/7XM2f/8pZMM4zWtEcBAFjjNH/YZauunjGv7/ALD9zlJwO2HHry5Scu/+h39y5Y3sSjNe1R\nAADWQM0edpVLZr9fUbPrruvUXi0o2X6L4vy5z31cezWbXvTrmy8de+yR+x808qQzL3tm/uL6\n981mK99994PvMlrjRwEAaAua/V1oVctfCyFsmsqr27JJKvfJ15aEkSGEMO3MU54sH3DMmHG9\nOyTmv/Db6884tubGu3brmards6binVPGXfLIzLu/dbSqHRs7yjdVVFQsX96U5/OKm3As1gQL\nFy5s6SnQqq3SCunS9POgtWry7yFdulg/hLAawi5TuTyE0CX3q1ODXfOS6bKKEELFwt889PaS\nSfeNG1iUF0Lou9HAmhdH3n/TG7tdtPX3Ha2Ro6xMNptd5QcF1g+Ns0JonBVCM2n2sMvJbxdC\nWJzOFCeTtVsWVtckS/JDCGUfvpTNZs8avn/9/YvSC0J2SEVldQghXVEZQqio+KLPCgoLVzZa\nI0dpUG5ublFRURM+zMyEy5pwtDVCJpMpLy8PIbRr1y4np8393ZxVWD0rtv9D08+jdVuxYkU2\nm83Ly8vPX+kXI3WmjChv6SmsblVVVdXV1Tk5Oe3atWvpuax+TfkcBHWaPezyijYLYfZb5ene\nBV8k1z/K0x23Lwkh5BblJ5JFM6bfWX//RE7eis+mHzL6gbotBx10UO2Fax94uOdKRmvkKA3K\nzc3NzfXHUH6QdDpdG3aFhYXJL3sa6isvL68Nuzb5tM23y2QybTjsoFk0+4mWwpKf9sxP/u7P\nn9ZerV7+ypxlVUN2WTuEkOo+LGRWPLmopvALBfdNOn/Ksx+nuh06a9asWbNmzZxxeU5up1lf\n6lOYXNlojRwFAKCNaP5X0BL5px3Q/593TXh67lsf/fv1qeddleqx8+G9ikMI+e23Gj24yz2n\nT3zyT3Pf/fdbj9xyxqPzFu60XbdVGW3lRwEAaCMSq+P9m9map3517Yyn5iysSPTdfIfjxo3p\nV5T75S1LHrp18hN/fnVxdV6vPoMOPPoXQzfsUHe/dPn8A0b+12/FNjbayo9Cc0in06WlpSGE\nTp06eSmWBi1atCiTyaRSqVQq1dJzoTVavnx5eXl5bm5uSclK3zkDfC+rJeyIkbDjWwk7Gifs\noMm1uV9mBACIlbADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiEQim8229BxYU9UunkQi0dIToZWq+/Zi\nkdAgKwSanLADAIiEl2IBACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIexoMSP23fv6/5S1\n9CxYM1gtbUpl6VN77bXXp9WZlp4IrHmEHQBAJIQdAKsgU/OD/rz9D7z7StVULm+WcWENkdvS\nE6CF1VS8P23y1P97ff7nFXn9t/zpmJNGrVeYDCFULZl/x5S7X3jtX0urMl179hs2/MQDt+sV\nQvj0pSduvuex+R98lCjqssk2w8Ydt38qJxGy1Xvtvf+hU2cc1LVd7bCj9ttny8n3jO1ZvLJx\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(ggplot2)\n",
    "\n",
    "# Number of rides by rider type\n",
    "all_trips_cleaned %>%\n",
    "  group_by(member_casual) %>%\n",
    "  summarise(number_of_rides = n()) %>%\n",
    "  ggplot(aes(x = member_casual, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col() +\n",
    "  labs(\n",
    "    title = \"Number of Rides by Rider Type\",\n",
    "    x = \"Rider Type\",\n",
    "    y = \"Number of Rides\"\n",
    "  ) +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "7b2f36df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:09.563970Z",
     "iopub.status.busy": "2025-08-14T02:41:09.562794Z",
     "iopub.status.idle": "2025-08-14T02:41:09.999342Z",
     "shell.execute_reply": "2025-08-14T02:41:09.998047Z"
    },
    "papermill": {
     "duration": 0.460018,
     "end_time": "2025-08-14T02:41:10.001035",
     "exception": false,
     "start_time": "2025-08-14T02:41:09.541017",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nuLGou5OIjBzeOmf2umPab+5+sN2u4Ss1+twnjm/Po7cc0R2XJZfX3K3zRBqLSHz0uaE7buVu\nsHrHT29ZOnvLs3qzRfvX3o9um8U1xTUn33lqWXUo1myMuGcw5m1b2oYVAACATMrJraglhImI\ni19jT60moOR0SwgTkSzVaopItMEkIvFRJ8efCin6/vdPYpaISKOPvxaRFd+cs6FDEfEI7PU4\n1YmIous0bZ2bVrP3493Wrk7RL3mvrJU/acTNadsfxpSf9LUl1YmIi1/t9d/M+qh7gIi03nf2\nzq1TT4KXmE2PYs1mszHq8Xo0rs6KhJ5ee/h6hKWl6qT99+7dsybVpdh5alk1YqdoPer4uFxa\nfFia57NtNQAAINPR6PwTv9Qpos/im/BS0TglTMeEbDGazX9PqaRMebaTsL/DbOhQRHxLtX5q\nZpeCjf1cNt/ZK9LFmtU5e5TN6mTttQTh53eJSPW62RI31uz+fk0REXHz8Qv5c+v3W387ee7i\n1WtXTv914mZorIvP49m0+tz/+7xTk1E/Vsr7U96SlatVqVKr7pttWr/hZ925a8l3nlpWHopV\nlv88vly9jl3HP/pyUIds7qm7lhYAAKicxllESg1bmDAgl0Dvbe2w2TOej0U6RRSN3srVKRp3\n69dlijWJiLPy4ii2ZnC9NtN25Qyu2/S1Kk2qNxg8rszNXvX73f1vhlrDvr/bdeT69T/v/m3f\n/m2Ll82fNujDKuv/2VU/0YBiArPpqQsjUuw8VayNaK1HbMgW6PT9x12XfNLdL3t2V+1TP/n1\n69dtXD8AAMj8XPwaaZWB8aFF3nyzWkJjfPSZNRtPZC/jZlufIf+sF6mf8NIYe2XTgxivqvXs\nsTqvwuVEtu3/477k9Upo3Dn8/R8e+M6b1qzttF25G829+nOvhLcWJVrWEHn26MlQ/zLl2/Ua\n0q7XEBE5vWV88UYfDxhz7NQ3VS21J17XncMhCdNxEYeS7zy1rB2iDAgIyFv29RYtWjRv3rRm\n5YoVnvYSBQAAgExP51JwbHG/8z902XH7v5PDfurb/J133rlm68MQIm/NGfXLpSevjMuGNI80\nmppPqm6P1XnlHVnGw/n3/kMuxzwOYXFhBzt/Pf/nP7LGR50xms1+ZcsnzBz174EpNyNEHg+8\nPbrzTZUqVd7+4ljCDPkqVBSR+EfxIuKm1cSE/HL/yYmDMQ8O9dl5M2HOFDtPLWtH7NatW2fb\n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\nRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Average ride duration by rider type\n",
    "all_trips_cleaned %>%\n",
    "  group_by(member_casual) %>%\n",
    "  summarise(average_ride_duration_min = mean(ride_duration) / 60) %>%\n",
    "  ggplot(aes(x = member_casual, y = average_ride_duration_min, fill = member_casual)) +\n",
    "  geom_col() +\n",
    "  labs(\n",
    "    title = \"Average Ride Duration by Rider Type\",\n",
    "    x = \"Rider Type\",\n",
    "    y = \"Average Ride Duration (Minutes)\"\n",
    "  ) +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "57fccfe9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:10.045359Z",
     "iopub.status.busy": "2025-08-14T02:41:10.044114Z",
     "iopub.status.idle": "2025-08-14T02:41:10.080118Z",
     "shell.execute_reply": "2025-08-14T02:41:10.078938Z"
    },
    "papermill": {
     "duration": 0.059484,
     "end_time": "2025-08-14T02:41:10.081614",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.022130",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>started_day_of_week</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Sun</td><td> 76588</td><td>938.6905</td></tr>\n",
       "\t<tr><td>Mon</td><td>116565</td><td>662.0110</td></tr>\n",
       "\t<tr><td>Tue</td><td>135136</td><td>675.4157</td></tr>\n",
       "\t<tr><td>Wed</td><td>129155</td><td>682.8417</td></tr>\n",
       "\t<tr><td>Thu</td><td>132230</td><td>668.7396</td></tr>\n",
       "\t<tr><td>Fri</td><td>122747</td><td>667.2206</td></tr>\n",
       "\t<tr><td>Sat</td><td> 71406</td><td>840.1874</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 3\n",
       "\\begin{tabular}{lll}\n",
       " started\\_day\\_of\\_week & number\\_of\\_rides & average\\_ride\\_duration\\\\\n",
       " <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Sun &  76588 & 938.6905\\\\\n",
       "\t Mon & 116565 & 662.0110\\\\\n",
       "\t Tue & 135136 & 675.4157\\\\\n",
       "\t Wed & 129155 & 682.8417\\\\\n",
       "\t Thu & 132230 & 668.7396\\\\\n",
       "\t Fri & 122747 & 667.2206\\\\\n",
       "\t Sat &  71406 & 840.1874\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 3\n",
       "\n",
       "| started_day_of_week &lt;ord&gt; | number_of_rides &lt;int&gt; | average_ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| Sun |  76588 | 938.6905 |\n",
       "| Mon | 116565 | 662.0110 |\n",
       "| Tue | 135136 | 675.4157 |\n",
       "| Wed | 129155 | 682.8417 |\n",
       "| Thu | 132230 | 668.7396 |\n",
       "| Fri | 122747 | 667.2206 |\n",
       "| Sat |  71406 | 840.1874 |\n",
       "\n"
      ],
      "text/plain": [
       "  started_day_of_week number_of_rides average_ride_duration\n",
       "1 Sun                  76588          938.6905             \n",
       "2 Mon                 116565          662.0110             \n",
       "3 Tue                 135136          675.4157             \n",
       "4 Wed                 129155          682.8417             \n",
       "5 Thu                 132230          668.7396             \n",
       "6 Fri                 122747          667.2206             \n",
       "7 Sat                  71406          840.1874             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare the Ridership data on each Day of the Week.\n",
    "\n",
    "ridership_by_day <- all_trips_cleaned %>%\n",
    "    group_by(started_day_of_week) %>%\n",
    "    summarise(\n",
    "        number_of_rides = n(),\n",
    "        average_ride_duration = mean(ride_duration)\n",
    "    )\n",
    "ridership_by_day\n",
    "write.csv(ridership_by_day, \n",
    "          file = \"/kaggle/working/ridership_by_day.csv\", \n",
    "          row.names = FALSE)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9b75f1e4",
   "metadata": {
    "papermill": {
     "duration": 0.020119,
     "end_time": "2025-08-14T02:41:10.122426",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.102307",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A bar chart makes weekday trends very clear"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "id": "e8c3aa2f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:10.165689Z",
     "iopub.status.busy": "2025-08-14T02:41:10.164408Z",
     "iopub.status.idle": "2025-08-14T02:41:10.451915Z",
     "shell.execute_reply": "2025-08-14T02:41:10.450587Z"
    },
    "papermill": {
     "duration": 0.310935,
     "end_time": "2025-08-14T02:41:10.453579",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.142644",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nV7HfXuDtXgAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(ggplot2)\n",
    "\n",
    "ggplot(ridership_by_day, aes(x = started_day_of_week, y = number_of_rides, fill = started_day_of_week)) +\n",
    "  geom_col() +\n",
    "  labs(\n",
    "    title = \"Number of Rides by Day of the Week\",\n",
    "    x = \"Day of the Week\",\n",
    "    y = \"Number of Rides\"\n",
    "  ) +\n",
    "  theme_minimal()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "0cabe955",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:10.533772Z",
     "iopub.status.busy": "2025-08-14T02:41:10.498663Z",
     "iopub.status.idle": "2025-08-14T02:41:10.588168Z",
     "shell.execute_reply": "2025-08-14T02:41:10.587078Z"
    },
    "papermill": {
     "duration": 0.114395,
     "end_time": "2025-08-14T02:41:10.589837",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.475442",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 21 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>started_day_of_week</th><th scope=col>member_casual</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Sun</td><td>casual </td><td> 13167</td><td>1708.5558</td></tr>\n",
       "\t<tr><td>Sun</td><td>casucal</td><td>  3472</td><td>1559.2736</td></tr>\n",
       "\t<tr><td>Sun</td><td>member </td><td> 59949</td><td> 733.6582</td></tr>\n",
       "\t<tr><td>Mon</td><td>casual </td><td>  4526</td><td> 966.5407</td></tr>\n",
       "\t<tr><td>Mon</td><td>casucal</td><td>  1783</td><td>1418.3550</td></tr>\n",
       "\t<tr><td>Mon</td><td>member </td><td>110256</td><td> 637.2789</td></tr>\n",
       "\t<tr><td>Tue</td><td>casual </td><td>  4909</td><td>1094.8116</td></tr>\n",
       "\t<tr><td>Tue</td><td>casucal</td><td>  2486</td><td>1459.2120</td></tr>\n",
       "\t<tr><td>Tue</td><td>member </td><td>127741</td><td> 644.0450</td></tr>\n",
       "\t<tr><td>Wed</td><td>casual </td><td>  5156</td><td>1269.5382</td></tr>\n",
       "\t<tr><td>Wed</td><td>casucal</td><td>  2292</td><td>1439.9716</td></tr>\n",
       "\t<tr><td>Wed</td><td>member </td><td>121707</td><td> 643.7285</td></tr>\n",
       "\t<tr><td>Thu</td><td>casual </td><td>  4534</td><td>1100.9656</td></tr>\n",
       "\t<tr><td>Thu</td><td>casucal</td><td>  2679</td><td>1439.5323</td></tr>\n",
       "\t<tr><td>Thu</td><td>member </td><td>125017</td><td> 636.5466</td></tr>\n",
       "\t<tr><td>Fri</td><td>casual </td><td>  4746</td><td>1142.3316</td></tr>\n",
       "\t<tr><td>Fri</td><td>casucal</td><td>  3100</td><td>1422.6626</td></tr>\n",
       "\t<tr><td>Fri</td><td>member </td><td>114901</td><td> 627.2144</td></tr>\n",
       "\t<tr><td>Sat</td><td>casual </td><td>  6789</td><td>1489.5989</td></tr>\n",
       "\t<tr><td>Sat</td><td>casucal</td><td>  5450</td><td>1639.8963</td></tr>\n",
       "\t<tr><td>Sat</td><td>member </td><td> 59167</td><td> 692.0090</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 21 × 4\n",
       "\\begin{tabular}{llll}\n",
       " started\\_day\\_of\\_week & member\\_casual & number\\_of\\_rides & average\\_ride\\_duration\\\\\n",
       " <ord> & <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Sun & casual  &  13167 & 1708.5558\\\\\n",
       "\t Sun & casucal &   3472 & 1559.2736\\\\\n",
       "\t Sun & member  &  59949 &  733.6582\\\\\n",
       "\t Mon & casual  &   4526 &  966.5407\\\\\n",
       "\t Mon & casucal &   1783 & 1418.3550\\\\\n",
       "\t Mon & member  & 110256 &  637.2789\\\\\n",
       "\t Tue & casual  &   4909 & 1094.8116\\\\\n",
       "\t Tue & casucal &   2486 & 1459.2120\\\\\n",
       "\t Tue & member  & 127741 &  644.0450\\\\\n",
       "\t Wed & casual  &   5156 & 1269.5382\\\\\n",
       "\t Wed & casucal &   2292 & 1439.9716\\\\\n",
       "\t Wed & member  & 121707 &  643.7285\\\\\n",
       "\t Thu & casual  &   4534 & 1100.9656\\\\\n",
       "\t Thu & casucal &   2679 & 1439.5323\\\\\n",
       "\t Thu & member  & 125017 &  636.5466\\\\\n",
       "\t Fri & casual  &   4746 & 1142.3316\\\\\n",
       "\t Fri & casucal &   3100 & 1422.6626\\\\\n",
       "\t Fri & member  & 114901 &  627.2144\\\\\n",
       "\t Sat & casual  &   6789 & 1489.5989\\\\\n",
       "\t Sat & casucal &   5450 & 1639.8963\\\\\n",
       "\t Sat & member  &  59167 &  692.0090\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 21 × 4\n",
       "\n",
       "| started_day_of_week &lt;ord&gt; | member_casual &lt;chr&gt; | number_of_rides &lt;int&gt; | average_ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| Sun | casual  |  13167 | 1708.5558 |\n",
       "| Sun | casucal |   3472 | 1559.2736 |\n",
       "| Sun | member  |  59949 |  733.6582 |\n",
       "| Mon | casual  |   4526 |  966.5407 |\n",
       "| Mon | casucal |   1783 | 1418.3550 |\n",
       "| Mon | member  | 110256 |  637.2789 |\n",
       "| Tue | casual  |   4909 | 1094.8116 |\n",
       "| Tue | casucal |   2486 | 1459.2120 |\n",
       "| Tue | member  | 127741 |  644.0450 |\n",
       "| Wed | casual  |   5156 | 1269.5382 |\n",
       "| Wed | casucal |   2292 | 1439.9716 |\n",
       "| Wed | member  | 121707 |  643.7285 |\n",
       "| Thu | casual  |   4534 | 1100.9656 |\n",
       "| Thu | casucal |   2679 | 1439.5323 |\n",
       "| Thu | member  | 125017 |  636.5466 |\n",
       "| Fri | casual  |   4746 | 1142.3316 |\n",
       "| Fri | casucal |   3100 | 1422.6626 |\n",
       "| Fri | member  | 114901 |  627.2144 |\n",
       "| Sat | casual  |   6789 | 1489.5989 |\n",
       "| Sat | casucal |   5450 | 1639.8963 |\n",
       "| Sat | member  |  59167 |  692.0090 |\n",
       "\n"
      ],
      "text/plain": [
       "   started_day_of_week member_casual number_of_rides average_ride_duration\n",
       "1  Sun                 casual         13167          1708.5558            \n",
       "2  Sun                 casucal         3472          1559.2736            \n",
       "3  Sun                 member         59949           733.6582            \n",
       "4  Mon                 casual          4526           966.5407            \n",
       "5  Mon                 casucal         1783          1418.3550            \n",
       "6  Mon                 member        110256           637.2789            \n",
       "7  Tue                 casual          4909          1094.8116            \n",
       "8  Tue                 casucal         2486          1459.2120            \n",
       "9  Tue                 member        127741           644.0450            \n",
       "10 Wed                 casual          5156          1269.5382            \n",
       "11 Wed                 casucal         2292          1439.9716            \n",
       "12 Wed                 member        121707           643.7285            \n",
       "13 Thu                 casual          4534          1100.9656            \n",
       "14 Thu                 casucal         2679          1439.5323            \n",
       "15 Thu                 member        125017           636.5466            \n",
       "16 Fri                 casual          4746          1142.3316            \n",
       "17 Fri                 casucal         3100          1422.6626            \n",
       "18 Fri                 member        114901           627.2144            \n",
       "19 Sat                 casual          6789          1489.5989            \n",
       "20 Sat                 casucal         5450          1639.8963            \n",
       "21 Sat                 member         59167           692.0090            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare the Ridership data between Casual riders and Annual members on each Day of the Week\n",
    "\n",
    "ridership_by_day_ridertype <- all_trips_cleaned %>%\n",
    "    group_by(started_day_of_week, member_casual) %>%\n",
    "    summarise(\n",
    "        number_of_rides = n(),\n",
    "        average_ride_duration = mean(ride_duration),\n",
    "        .groups = \"drop\"\n",
    "    ) %>%\n",
    "    arrange(started_day_of_week, member_casual)\n",
    "ridership_by_day_ridertype\n",
    "write.csv(ridership_by_day_ridertype, \n",
    "          file = \"/kaggle/working/ridership_by_day_ridertype.csv\", \n",
    "          row.names = FALSE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "c452951b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:10.638398Z",
     "iopub.status.busy": "2025-08-14T02:41:10.637135Z",
     "iopub.status.idle": "2025-08-14T02:41:10.838747Z",
     "shell.execute_reply": "2025-08-14T02:41:10.837461Z"
    },
    "papermill": {
     "duration": 0.227209,
     "end_time": "2025-08-14T02:41:10.840406",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.613197",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# A grouped bar chart is a great way to compare members vs. casual riders for each day:\n",
    "\n",
    "library(ggplot2)\n",
    "\n",
    "ggplot(ridership_by_day_ridertype, aes(x = started_day_of_week, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\") +\n",
    "  labs(\n",
    "    title = \"Number of Rides by Rider Type and Day of the Week\",\n",
    "    x = \"Day of the Week\",\n",
    "    y = \"Number of Rides\",\n",
    "    fill = \"Rider Type\"\n",
    "  ) +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "90f41815",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:10.889609Z",
     "iopub.status.busy": "2025-08-14T02:41:10.888376Z",
     "iopub.status.idle": "2025-08-14T02:41:11.015884Z",
     "shell.execute_reply": "2025-08-14T02:41:11.014605Z"
    },
    "papermill": {
     "duration": 0.15496,
     "end_time": "2025-08-14T02:41:11.017750",
     "exception": false,
     "start_time": "2025-08-14T02:41:10.862790",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# There is an observable pattern for Ridership data between Weekdays and Weekends like the Number \n",
    "# of Rides is more on weekdays and Average Riding Minutes is more on weekends.\n",
    "\n",
    "all_trips_cleaned$started_day_type <- ifelse(\n",
    "    all_trips_cleaned$started_day_of_week %in% c(\"Sat\", \"Sun\"), \n",
    "    \"weekend\", \n",
    "    \"weekday\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "dbbaa857",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.065919Z",
     "iopub.status.busy": "2025-08-14T02:41:11.064712Z",
     "iopub.status.idle": "2025-08-14T02:41:11.115568Z",
     "shell.execute_reply": "2025-08-14T02:41:11.114503Z"
    },
    "papermill": {
     "duration": 0.076638,
     "end_time": "2025-08-14T02:41:11.117135",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.040497",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>started_day_type</th><th scope=col>member_casual</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration_min</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>weekday</td><td>casual </td><td> 23871</td><td>18.64746</td></tr>\n",
       "\t<tr><td>weekday</td><td>casucal</td><td> 12340</td><td>23.93801</td></tr>\n",
       "\t<tr><td>weekday</td><td>member </td><td>599622</td><td>10.63247</td></tr>\n",
       "\t<tr><td>weekend</td><td>casual </td><td> 19956</td><td>27.23445</td></tr>\n",
       "\t<tr><td>weekend</td><td>casucal</td><td>  8922</td><td>26.80870</td></tr>\n",
       "\t<tr><td>weekend</td><td>member </td><td>119116</td><td>11.88284</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 4\n",
       "\\begin{tabular}{llll}\n",
       " started\\_day\\_type & member\\_casual & number\\_of\\_rides & average\\_ride\\_duration\\_min\\\\\n",
       " <chr> & <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t weekday & casual  &  23871 & 18.64746\\\\\n",
       "\t weekday & casucal &  12340 & 23.93801\\\\\n",
       "\t weekday & member  & 599622 & 10.63247\\\\\n",
       "\t weekend & casual  &  19956 & 27.23445\\\\\n",
       "\t weekend & casucal &   8922 & 26.80870\\\\\n",
       "\t weekend & member  & 119116 & 11.88284\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 4\n",
       "\n",
       "| started_day_type &lt;chr&gt; | member_casual &lt;chr&gt; | number_of_rides &lt;int&gt; | average_ride_duration_min &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| weekday | casual  |  23871 | 18.64746 |\n",
       "| weekday | casucal |  12340 | 23.93801 |\n",
       "| weekday | member  | 599622 | 10.63247 |\n",
       "| weekend | casual  |  19956 | 27.23445 |\n",
       "| weekend | casucal |   8922 | 26.80870 |\n",
       "| weekend | member  | 119116 | 11.88284 |\n",
       "\n"
      ],
      "text/plain": [
       "  started_day_type member_casual number_of_rides average_ride_duration_min\n",
       "1 weekday          casual         23871          18.64746                 \n",
       "2 weekday          casucal        12340          23.93801                 \n",
       "3 weekday          member        599622          10.63247                 \n",
       "4 weekend          casual         19956          27.23445                 \n",
       "5 weekend          casucal         8922          26.80870                 \n",
       "6 weekend          member        119116          11.88284                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# You can now compare Number of Rides and Average Ride Duration (minutes) between weekdays and weekends:\n",
    "\n",
    "library(dplyr)\n",
    "\n",
    "ridership_by_daytype <- all_trips_cleaned %>%\n",
    "    group_by(started_day_type, member_casual) %>%\n",
    "    summarise(\n",
    "        number_of_rides = n(),\n",
    "        average_ride_duration_min = mean(ride_duration) / 60,\n",
    "        .groups = \"drop\"\n",
    "    )\n",
    "\n",
    "ridership_by_daytype\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "ad0a7d03",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.165638Z",
     "iopub.status.busy": "2025-08-14T02:41:11.164562Z",
     "iopub.status.idle": "2025-08-14T02:41:11.239452Z",
     "shell.execute_reply": "2025-08-14T02:41:11.203442Z"
    },
    "papermill": {
     "duration": 0.101851,
     "end_time": "2025-08-14T02:41:11.241822",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.139971",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>started_day_type</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>weekday</td><td>635833</td><td>671.4962</td></tr>\n",
       "\t<tr><td>weekend</td><td>147994</td><td>891.1635</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 3\n",
       "\\begin{tabular}{lll}\n",
       " started\\_day\\_type & number\\_of\\_rides & average\\_ride\\_duration\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t weekday & 635833 & 671.4962\\\\\n",
       "\t weekend & 147994 & 891.1635\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 3\n",
       "\n",
       "| started_day_type &lt;chr&gt; | number_of_rides &lt;int&gt; | average_ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| weekday | 635833 | 671.4962 |\n",
       "| weekend | 147994 | 891.1635 |\n",
       "\n"
      ],
      "text/plain": [
       "  started_day_type number_of_rides average_ride_duration\n",
       "1 weekday          635833          671.4962             \n",
       "2 weekend          147994          891.1635             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare the Ridership data between Weekdays and Weekends\n",
    "\n",
    "ridership_by_daytype <- all_trips_cleaned %>%\n",
    "    group_by(started_day_type) %>%\n",
    "    summarise(\n",
    "        number_of_rides = n(),\n",
    "        average_ride_duration = mean(ride_duration)\n",
    "    )\n",
    "ridership_by_daytype\n",
    "write.csv(ridership_by_daytype, \n",
    "          file = \"/kaggle/working/ridership_by_daytype.csv\", \n",
    "          row.names = FALSE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "id": "1e5e615b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.289183Z",
     "iopub.status.busy": "2025-08-14T02:41:11.288019Z",
     "iopub.status.idle": "2025-08-14T02:41:11.348004Z",
     "shell.execute_reply": "2025-08-14T02:41:11.346936Z"
    },
    "papermill": {
     "duration": 0.085339,
     "end_time": "2025-08-14T02:41:11.349838",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.264499",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>started_day_type</th><th scope=col>member_casual</th><th scope=col>number_of_rides</th><th scope=col>average_ride_duration_min</th></tr>\n",
       "\t<tr><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>weekday</td><td>member</td><td>599622</td><td>10.63247</td></tr>\n",
       "\t<tr><td>weekday</td><td>casual</td><td> 23871</td><td>18.64746</td></tr>\n",
       "\t<tr><td>weekday</td><td>NA    </td><td> 12340</td><td>23.93801</td></tr>\n",
       "\t<tr><td>weekend</td><td>member</td><td>119116</td><td>11.88284</td></tr>\n",
       "\t<tr><td>weekend</td><td>casual</td><td> 19956</td><td>27.23445</td></tr>\n",
       "\t<tr><td>weekend</td><td>NA    </td><td>  8922</td><td>26.80870</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 4\n",
       "\\begin{tabular}{llll}\n",
       " started\\_day\\_type & member\\_casual & number\\_of\\_rides & average\\_ride\\_duration\\_min\\\\\n",
       " <fct> & <fct> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t weekday & member & 599622 & 10.63247\\\\\n",
       "\t weekday & casual &  23871 & 18.64746\\\\\n",
       "\t weekday & NA     &  12340 & 23.93801\\\\\n",
       "\t weekend & member & 119116 & 11.88284\\\\\n",
       "\t weekend & casual &  19956 & 27.23445\\\\\n",
       "\t weekend & NA     &   8922 & 26.80870\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 4\n",
       "\n",
       "| started_day_type &lt;fct&gt; | member_casual &lt;fct&gt; | number_of_rides &lt;int&gt; | average_ride_duration_min &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| weekday | member | 599622 | 10.63247 |\n",
       "| weekday | casual |  23871 | 18.64746 |\n",
       "| weekday | NA     |  12340 | 23.93801 |\n",
       "| weekend | member | 119116 | 11.88284 |\n",
       "| weekend | casual |  19956 | 27.23445 |\n",
       "| weekend | NA     |   8922 | 26.80870 |\n",
       "\n"
      ],
      "text/plain": [
       "  started_day_type member_casual number_of_rides average_ride_duration_min\n",
       "1 weekday          member        599622          10.63247                 \n",
       "2 weekday          casual         23871          18.64746                 \n",
       "3 weekday          NA             12340          23.93801                 \n",
       "4 weekend          member        119116          11.88284                 \n",
       "5 weekend          casual         19956          27.23445                 \n",
       "6 weekend          NA              8922          26.80870                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare the Ridership data between Casual riders and Annual members on Weekdays and Weekends.\n",
    "\n",
    "library(dplyr)\n",
    "\n",
    "# Summary: Weekday vs Weekend × Rider Type\n",
    "ridership_by_daytype_ridertype <- all_trips_cleaned %>%\n",
    "  group_by(started_day_type, member_casual) %>%\n",
    "  summarise(\n",
    "    number_of_rides = n(),\n",
    "    average_ride_duration_min = mean(ride_duration, na.rm = TRUE) / 60,\n",
    "    .groups = \"drop\"\n",
    "  ) %>%\n",
    "  mutate(\n",
    "    started_day_type = factor(started_day_type, levels = c(\"weekday\", \"weekend\")),\n",
    "    member_casual    = factor(member_casual,    levels = c(\"member\", \"casual\"))\n",
    "  ) %>%\n",
    "  arrange(started_day_type, member_casual)\n",
    "\n",
    "ridership_by_daytype_ridertype\n",
    "\n",
    "# Save\n",
    "write.csv(ridership_by_daytype_ridertype,\n",
    "          file = \"/kaggle/working/ridership_by_daytype_ridertype.csv\",\n",
    "          row.names = FALSE)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 61,
   "id": "803c567d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.396457Z",
     "iopub.status.busy": "2025-08-14T02:41:11.395308Z",
     "iopub.status.idle": "2025-08-14T02:41:11.585198Z",
     "shell.execute_reply": "2025-08-14T02:41:11.583247Z"
    },
    "papermill": {
     "duration": 0.215393,
     "end_time": "2025-08-14T02:41:11.587446",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.372053",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nk1+JoZtn9i1bJLdjiMm9+NA5O0aX8d82akyGlQcAAACttAa75Tcigzq9lXT46x0KR91cl64l\nAQAAIC20Brv8FmPYibtJh98KuWO05E7XkgAAAJAWWoPdB1VznPyuw583ohIOjLi0pfOS0wEV\nhmRAYQAA4Bly99wIJQkXN89CZar3n7A40v5gyo8KeHvl6pZyO22PhaZLVZsbFUhaVUIrb0am\ny4zSi9a7Yt9Y8uVHBV6rW6h8p3feEpGQxfPG3D709ezvL9pzLV7WMiMrBAAAz4rAGh3a18hx\n/50aeefqtlXLpw5r88tRY8iCFo6hBpPJaNd6ZOoJFWj+zqDStxyv7THXJk/71j3H6z06BMVP\nEOxmdk4lGimqqmqc9O6JDe++M3DJ1qN2VRURRTGWer7l+Jmzm5TwycgKkRbWIX0yu4RUsEyc\n7pwZRUVFhYeHi0hAQIBz5gjoldVqDQsLExF/f39F4ZFXSAd3z43wLji24qgD+0aWTzg85t6/\nFQMrhkRKSFhECffHH5BytPPW0ZvfF/NL3wpj7h1w8ayYo/y6qweapG/L6SgVDyjOFtzohy2N\nvr5+JuTUpVijW97gUnl9LBlXGQAAgNmj9IRKOZpsu7guNLKEu1fGzcgee1s1+RgzoGXVFm03\nuDjnJx1SfSTTLXuhStVqVqtckVQHAACcIDbKJiL5LXFHo8YV8kl4jd3exRMaViri5erinyu4\ndd+p16LtiT4efm57v9Yv5c/uY/HwK16h/ui56+OnmF/M3zdoivX2nnb1Snpa/MJtWk9jisiR\n2TUVRZlxMTzBMHsDXzfPXF0cb9yNhhpz/p7Zt0mAh7vZ6JI9X6kOg2fdiHlQXgqFpVlKR+zW\nrFmjsZXXXnvtiSsBAABILDby5NjDoR6BzVpkd0s69tCs1lV6LXH1r9Cm28CA2P/WfD24yrYC\nCSe4d2l1+RItzyt52nbuViTA+PfWZaPebbx65/wD33RyTGCPDe1Y/uWbtduPm97HzZCKo2qF\n3xpj6NVw7qSQ3tOqOobcPTtxy+2oWl8Mjp/myMxGfQ5ff6FFxyrBPoe2L1/4aa9Nu87/9/tE\no4bC0ialYNesWTONrWi/UA8AAOBRLm2ePiwq8P47NeL25a0rl532rbpkx3dJT5Laok6+MGC5\ne+Cre06sKOVlFpGRIzo/V/TlWwmm+ezFrueVItvO76/u7yoiIhNWD6zw+uTOY0e+Prywt4iE\n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\nwE9S9nTUT+QfALGyN5EaiUSipZfA8q2jYVdRUVFcXNzSq2hGbVt6AY1SVFQU/YysvexNDVu4\ncGGKZ6Q1KCws1Hat0zoadtnZ2dnZ2S29imZU2dILaJTCwsLUTFReXl5SUpLKGYmAvWm56n89\n7tixox/w6yBPequ1joadf5GtSsqejvqJ/AMgVi2yN9mhoPXw4QkAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASGS09AJghRLP/W+zjT13jY+Y/OXua3xMAGgUr9gBAERC2AEA\nRELYAQBEwjF2APFrziNW1zxHrEKTecUOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBJOUAzNa/To0S29hFW1Fi0VgOXyih0AQCSEHQBAJIQdAEAkHGMHwNphLToMdC1a\nKpHxih0AQCSEHQBAJIQdAEAkhB0AQCRS8+GJ2uemTn5s1mtfLE3v1Wfnk846uXvu6sy7otHW\n7CwAAGuZVLxi9/H0SyZMe2mXw0+97NwT8j96+uLzbqpthtHW7CwAAGud5g+7ZOU102b3GHT5\nUfvs2nvHPc+5cmjJ10/cO69kDY+2ZmcBAFgLNXvYVSyZ9Xl5zb77blT3bXbBHtvnZ7363Py6\nb5PVC/9645/OPu3kIwYce9ZF45+es2jZ2yaTFZ9++sWqjNbwLAAA64JmPwqtsuStEMLWuZn1\n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\nTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Quick group bar chart\n",
    "\n",
    "library(ggplot2)\n",
    "\n",
    "ggplot(ridership_by_daytype_ridertype,\n",
    "       aes(x = started_day_type, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = position_dodge(width = 0.7), width = 0.6) +\n",
    "  labs(title = \"Number of Rides: Weekday vs Weekend by Rider Type\",\n",
    "       x = \"Day Type\", y = \"Number of Rides\", fill = \"Rider Type\") +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "fa5a1ca8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.636641Z",
     "iopub.status.busy": "2025-08-14T02:41:11.635399Z",
     "iopub.status.idle": "2025-08-14T02:41:11.697488Z",
     "shell.execute_reply": "2025-08-14T02:41:11.695693Z"
    },
    "papermill": {
     "duration": 0.0887,
     "end_time": "2025-08-14T02:41:11.699417",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.610717",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 10 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>start_station_id</th><th scope=col>start_station_name</th><th scope=col>number_of_rides</th><th scope=col>ride_share</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>192</td><td><span style=white-space:pre-wrap>Canal St &amp; Adams St         </span></td><td>14127</td><td>2%</td></tr>\n",
       "\t<tr><td> 91</td><td>Clinton St &amp; Washington Blvd</td><td>13613</td><td>2%</td></tr>\n",
       "\t<tr><td> 77</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St     </span></td><td>13291</td><td>2%</td></tr>\n",
       "\t<tr><td>195</td><td><span style=white-space:pre-wrap>Columbus Dr &amp; Randolph St   </span></td><td> 9021</td><td>1%</td></tr>\n",
       "\t<tr><td>133</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St    </span></td><td> 8993</td><td>1%</td></tr>\n",
       "\t<tr><td>174</td><td><span style=white-space:pre-wrap>Canal St &amp; Madison St       </span></td><td> 8165</td><td>1%</td></tr>\n",
       "\t<tr><td> 43</td><td>Michigan Ave &amp; Washington St</td><td> 7374</td><td>1%</td></tr>\n",
       "\t<tr><td>287</td><td><span style=white-space:pre-wrap>Franklin St &amp; Monroe St     </span></td><td> 7207</td><td>1%</td></tr>\n",
       "\t<tr><td> 48</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Kingsbury St  </span></td><td> 6698</td><td>1%</td></tr>\n",
       "\t<tr><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St        </span></td><td> 6648</td><td>1%</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 10 × 4\n",
       "\\begin{tabular}{llll}\n",
       " start\\_station\\_id & start\\_station\\_name & number\\_of\\_rides & ride\\_share\\\\\n",
       " <dbl> & <chr> & <int> & <chr>\\\\\n",
       "\\hline\n",
       "\t 192 & Canal St \\& Adams St          & 14127 & 2\\%\\\\\n",
       "\t  91 & Clinton St \\& Washington Blvd & 13613 & 2\\%\\\\\n",
       "\t  77 & Clinton St \\& Madison St      & 13291 & 2\\%\\\\\n",
       "\t 195 & Columbus Dr \\& Randolph St    &  9021 & 1\\%\\\\\n",
       "\t 133 & Kingsbury St \\& Kinzie St     &  8993 & 1\\%\\\\\n",
       "\t 174 & Canal St \\& Madison St        &  8165 & 1\\%\\\\\n",
       "\t  43 & Michigan Ave \\& Washington St &  7374 & 1\\%\\\\\n",
       "\t 287 & Franklin St \\& Monroe St      &  7207 & 1\\%\\\\\n",
       "\t  48 & Larrabee St \\& Kingsbury St   &  6698 & 1\\%\\\\\n",
       "\t  66 & Clinton St \\& Lake St         &  6648 & 1\\%\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 10 × 4\n",
       "\n",
       "| start_station_id &lt;dbl&gt; | start_station_name &lt;chr&gt; | number_of_rides &lt;int&gt; | ride_share &lt;chr&gt; |\n",
       "|---|---|---|---|\n",
       "| 192 | Canal St &amp; Adams St          | 14127 | 2% |\n",
       "|  91 | Clinton St &amp; Washington Blvd | 13613 | 2% |\n",
       "|  77 | Clinton St &amp; Madison St      | 13291 | 2% |\n",
       "| 195 | Columbus Dr &amp; Randolph St    |  9021 | 1% |\n",
       "| 133 | Kingsbury St &amp; Kinzie St     |  8993 | 1% |\n",
       "| 174 | Canal St &amp; Madison St        |  8165 | 1% |\n",
       "|  43 | Michigan Ave &amp; Washington St |  7374 | 1% |\n",
       "| 287 | Franklin St &amp; Monroe St      |  7207 | 1% |\n",
       "|  48 | Larrabee St &amp; Kingsbury St   |  6698 | 1% |\n",
       "|  66 | Clinton St &amp; Lake St         |  6648 | 1% |\n",
       "\n"
      ],
      "text/plain": [
       "   start_station_id start_station_name           number_of_rides ride_share\n",
       "1  192              Canal St & Adams St          14127           2%        \n",
       "2   91              Clinton St & Washington Blvd 13613           2%        \n",
       "3   77              Clinton St & Madison St      13291           2%        \n",
       "4  195              Columbus Dr & Randolph St     9021           1%        \n",
       "5  133              Kingsbury St & Kinzie St      8993           1%        \n",
       "6  174              Canal St & Madison St         8165           1%        \n",
       "7   43              Michigan Ave & Washington St  7374           1%        \n",
       "8  287              Franklin St & Monroe St       7207           1%        \n",
       "9   48              Larrabee St & Kingsbury St    6698           1%        \n",
       "10  66              Clinton St & Lake St          6648           1%        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Identify the top 10 most used stations.\n",
    "\n",
    "all_trips_cleaned %>%\n",
    "  group_by(start_station_id, start_station_name) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  mutate(ride_share = paste0(\n",
    "      round(100 * number_of_rides / sum(number_of_rides)), \"%\"\n",
    "  )) %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  slice_head(n = 10)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "a13d6766",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:11.748430Z",
     "iopub.status.busy": "2025-08-14T02:41:11.747271Z",
     "iopub.status.idle": "2025-08-14T02:41:11.973820Z",
     "shell.execute_reply": "2025-08-14T02:41:11.971943Z"
    },
    "papermill": {
     "duration": 0.253829,
     "end_time": "2025-08-14T02:41:11.976477",
     "exception": false,
     "start_time": "2025-08-14T02:41:11.722648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nzd95s0YK+2f/vE/iv7Bp0XvmnEXzP5nSu5n13tUz5u67acyOts1YkGrTfdWGNeF+yviZi9iq\n98LwmVNbr5fbxJZs+uUxn2FeunJjFupVvMrKAAAAgA43j9hd2xpz/K7F4k1LPGRC3ZYOnbqa\njAnbtvBAQEL/si3HjRtXubtGy/J5L5mBDPfdtOs3h86zJgz21b1s4NPcW3prcvL/UVBitSOf\nuF/QJsbfxkJm3ruHatfyXA0r5+vfkV2nJo9ObVCxCaJnSa7gXsptrfW78uy/XnxGOnoX6kUZ\nWJxXWRkAAADQ4WKwY9XLD/ztFr6qNNURETGCflGjrX6veMQuJCioZ2KK7gxjeN/g3qvmpy5c\ndCE911Rh1yZg+Pj+bdcN63cws5juTws93e6LbdM1yvRtCYnfn0/NUfPqejQL+TCiQ32zqvpW\nLq1QwyqzMspuqRvwUYxzJkuUWH5HlfuG+VimrD8+dlb3w4k75O4hVaU6IjJ3Gco/NS35dv5I\nl6ena69vO2XpM8rk1lLdS1VOWlLClrOX/8pVaa0d3LsPjAxt56R7q/jxb4mf77yU9meRwKZ9\nYLiFvoV6ePHw2m0H0u7cZ2RW3n7dJ4/9QMpjqloZIxfnVVYGAAAAdDgY7JQ5Jx6oND3fsa2w\nXe7ZuW91V5cdmLmo85Dxw5s43j23e2HSQptOO0cmJteJHPatT/TK0d5E7NpJU0+q3MZOjHGU\nqc/uS1oeNdEyObGRVKC37wDbilekjQzymZqyesSUMx3btvJt0sTbw1kkcW3Z0pWIyu9Ij84z\nZqaETR0bsUPm0mPZojBD0+CJRzW3/nzzHyNntyYiYtUbLzxqs8RbO/vp+1umzTlj1mFi7HBL\nkebqiU0blkzxb5ViJ+KxJU9mj59316bV2EmzLdjMfUkrTz4pcig/dknh1fFz1zYKjZgd4aF8\nlLZiaeIcJ79Fgc4GVsaYxXmVlSEijUZTUlJiaE1ehEajqamhAADgzadUKmu7hBfAMIxIVOVF\n5xwMdhrlXSJyEr3M5YOyNlHh7/kSkXPQpPrbT6U9KhbYWooYhicQicXCwowdR+7mf7wpppOV\nhIg8Gja6Oihs/Z5/Voa56e1LlYKd18C4+Ianvvvx3K/Hdn+5dR1fIm/cqn1IeLivrUQgEpfu\nSM+kiu8kLlyidGiuSb/gFdzJVsjLu3E5XeDaoJ5p5cZE5DW0Q+bEDUVaPxMek39vx11tnaV1\n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\nGLp4lEflzNN9vLzaB4f3L2Hh19m748p5kQsWXoiOt7It0cij38jujYUQmpR7m1aG/HTlt2Rl\nqfZ9x0Wtmei0fPOQkpZCiCcXD6/dejDq/iOZpX2VBm3HDe2iMNArXbqnV5c+G3Z2K2au37Rf\nZ++6QVtHOVpl+VO4sX7kjB+q7tr8KnHG/bHGd/z3q3dtL22mePe+AQCADP+MYLd50uwz1k1H\nz+xnZ6a5dmpjyOLxzeqHlzB7dR75x8DZ7s38FvhVePNrtgOLCiGEmDdnd4fBA3qXUv56clfY\nyvFqx82fuRUVQoRNHXMkudrgQeOci8iifjr05ZQhmtWb2jha5DQ9S6kDvGpMDA/qP/5M88b1\n3WvWrFLJ2UxVvl698kKIAcFhJUf0PVJj6orBVd7cx5ZTpoX3mTh0+HZLl3ZLF/Yx3JDoiI1j\nlh6wqzspS6rL4uC0hS0/G9mvZukH53YtCF1QvMWOHg7mIROmnjapO3rSF6rU6O2Bk35PStdH\nXXXStZFz1lbrOtx/eKXUp1HLlwTPdmowp5mhXhmQ+U+hjE/71INrLyUOrG1lKoS4FHKuaMUB\nmVPdu/RNLzU1NTk52XBJxtNoNPm1KuAfKjY2tiBWq9Fo1Gp1WhqXzGZDq9UKIVJSUuhPtjQa\nTVJSUkpKSmEXUvjkcnmRIkVymvvPCHYObbuObNWxno2ZEMKpZLf1X8+5laouYWamnxtXYlCP\nT2pmLJz5a7YD6wghhKg8cm73piWFEG7V6iRF9j4SGPHZqk4pzw/svRH3xfZx1S1NhRAVKlfX\nnOu9Y821ZmMeZju9zdz6WUp17RkQWDXiux/OXTq+a8+WdQqVTfX6H/n4+bk7qEzMlGYymdzE\nTKk0zTJKk3I/eMHiVMc6mugLrt4tHEzlCTevRJuUdytr9WY3Eu7sGn3+Zsu25f57bPXZF3Ub\n2aly6ptlowl+bdyFEM5eY/+/vTsPjOFs4Dj+7L3Z3IfEFUHchLip0rqqKFK3Im6to/U66j5C\nHXWV1tG6IhUkqNKipd62ryitatGi6KmalDhyS7K72Z33jxCbSBZxbEy+n78yz/PMzPNMns3+\ndmZnUmHL4fPXMtMVez/75+asLa/Xc9EIUTUg7GL/sbuzG5vSTmRYpRc7PF/VUycqVXxriue/\nOldR8LGy/yuz/S3oPdvXd9kQdehK3Y7+1qwb688nNV3Y+JEctxySJGVlZdnvEoD79/heUJIk\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Lets visualize\n",
    "\n",
    "library(ggplot2)\n",
    "\n",
    "all_trips_cleaned %>%\n",
    "  group_by(start_station_name) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  slice_head(n = 10) %>%\n",
    "  ggplot(aes(x = reorder(start_station_name, number_of_rides), y = number_of_rides)) +\n",
    "  geom_col(fill = \"steelblue\") +\n",
    "  coord_flip() +\n",
    "  labs(\n",
    "    title = \"Top 10 Most Used Start Stations\",\n",
    "    x = \"Station Name\",\n",
    "    y = \"Number of Rides\"\n",
    "  ) +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "1f7a694c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:12.030175Z",
     "iopub.status.busy": "2025-08-14T02:41:12.028971Z",
     "iopub.status.idle": "2025-08-14T02:41:12.094318Z",
     "shell.execute_reply": "2025-08-14T02:41:12.092983Z"
    },
    "papermill": {
     "duration": 0.093735,
     "end_time": "2025-08-14T02:41:12.095894",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.002159",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 10 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>end_station_id</th><th scope=col>end_station_name</th><th scope=col>number_of_rides</th><th scope=col>ride_share</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>192</td><td><span style=white-space:pre-wrap>Canal St &amp; Adams St         </span></td><td>15031</td><td>1.9%</td></tr>\n",
       "\t<tr><td> 91</td><td>Clinton St &amp; Washington Blvd</td><td>14840</td><td>1.9%</td></tr>\n",
       "\t<tr><td> 77</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St     </span></td><td>13661</td><td>1.7%</td></tr>\n",
       "\t<tr><td>133</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St    </span></td><td> 8970</td><td>1.1%</td></tr>\n",
       "\t<tr><td>174</td><td><span style=white-space:pre-wrap>Canal St &amp; Madison St       </span></td><td> 8536</td><td>1.1%</td></tr>\n",
       "\t<tr><td> 43</td><td>Michigan Ave &amp; Washington St</td><td> 8479</td><td>1.1%</td></tr>\n",
       "\t<tr><td> 66</td><td><span style=white-space:pre-wrap>Clinton St &amp; Lake St        </span></td><td> 6918</td><td>0.9%</td></tr>\n",
       "\t<tr><td>287</td><td><span style=white-space:pre-wrap>Franklin St &amp; Monroe St     </span></td><td> 6502</td><td>0.8%</td></tr>\n",
       "\t<tr><td> 81</td><td>Daley Center Plaza          </td><td> 6432</td><td>0.8%</td></tr>\n",
       "\t<tr><td>283</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd   </span></td><td> 6389</td><td>0.8%</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 10 × 4\n",
       "\\begin{tabular}{llll}\n",
       " end\\_station\\_id & end\\_station\\_name & number\\_of\\_rides & ride\\_share\\\\\n",
       " <dbl> & <chr> & <int> & <chr>\\\\\n",
       "\\hline\n",
       "\t 192 & Canal St \\& Adams St          & 15031 & 1.9\\%\\\\\n",
       "\t  91 & Clinton St \\& Washington Blvd & 14840 & 1.9\\%\\\\\n",
       "\t  77 & Clinton St \\& Madison St      & 13661 & 1.7\\%\\\\\n",
       "\t 133 & Kingsbury St \\& Kinzie St     &  8970 & 1.1\\%\\\\\n",
       "\t 174 & Canal St \\& Madison St        &  8536 & 1.1\\%\\\\\n",
       "\t  43 & Michigan Ave \\& Washington St &  8479 & 1.1\\%\\\\\n",
       "\t  66 & Clinton St \\& Lake St         &  6918 & 0.9\\%\\\\\n",
       "\t 287 & Franklin St \\& Monroe St      &  6502 & 0.8\\%\\\\\n",
       "\t  81 & Daley Center Plaza           &  6432 & 0.8\\%\\\\\n",
       "\t 283 & LaSalle St \\& Jackson Blvd    &  6389 & 0.8\\%\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 10 × 4\n",
       "\n",
       "| end_station_id &lt;dbl&gt; | end_station_name &lt;chr&gt; | number_of_rides &lt;int&gt; | ride_share &lt;chr&gt; |\n",
       "|---|---|---|---|\n",
       "| 192 | Canal St &amp; Adams St          | 15031 | 1.9% |\n",
       "|  91 | Clinton St &amp; Washington Blvd | 14840 | 1.9% |\n",
       "|  77 | Clinton St &amp; Madison St      | 13661 | 1.7% |\n",
       "| 133 | Kingsbury St &amp; Kinzie St     |  8970 | 1.1% |\n",
       "| 174 | Canal St &amp; Madison St        |  8536 | 1.1% |\n",
       "|  43 | Michigan Ave &amp; Washington St |  8479 | 1.1% |\n",
       "|  66 | Clinton St &amp; Lake St         |  6918 | 0.9% |\n",
       "| 287 | Franklin St &amp; Monroe St      |  6502 | 0.8% |\n",
       "|  81 | Daley Center Plaza           |  6432 | 0.8% |\n",
       "| 283 | LaSalle St &amp; Jackson Blvd    |  6389 | 0.8% |\n",
       "\n"
      ],
      "text/plain": [
       "   end_station_id end_station_name             number_of_rides ride_share\n",
       "1  192            Canal St & Adams St          15031           1.9%      \n",
       "2   91            Clinton St & Washington Blvd 14840           1.9%      \n",
       "3   77            Clinton St & Madison St      13661           1.7%      \n",
       "4  133            Kingsbury St & Kinzie St      8970           1.1%      \n",
       "5  174            Canal St & Madison St         8536           1.1%      \n",
       "6   43            Michigan Ave & Washington St  8479           1.1%      \n",
       "7   66            Clinton St & Lake St          6918           0.9%      \n",
       "8  287            Franklin St & Monroe St       6502           0.8%      \n",
       "9   81            Daley Center Plaza            6432           0.8%      \n",
       "10 283            LaSalle St & Jackson Blvd     6389           0.8%      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# top 10 most used end stations, following the same logic you used for start stations:\n",
    "\n",
    "library(dplyr)\n",
    "\n",
    "top_end_stations <- all_trips_cleaned %>%\n",
    "  group_by(end_station_id, end_station_name) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  mutate(\n",
    "    ride_share = paste0(\n",
    "      round(100 * number_of_rides / sum(number_of_rides), 1), \"%\"\n",
    "    )\n",
    "  ) %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  slice_head(n = 10)\n",
    "\n",
    "top_end_stations\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "id": "918bf16c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:12.147026Z",
     "iopub.status.busy": "2025-08-14T02:41:12.145807Z",
     "iopub.status.idle": "2025-08-14T02:41:12.303640Z",
     "shell.execute_reply": "2025-08-14T02:41:12.302165Z"
    },
    "papermill": {
     "duration": 0.185322,
     "end_time": "2025-08-14T02:41:12.305678",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.120356",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ0BT99sG4OdkQwghTFmiyBAXTtQ66qh1VIFa3AiuOqijCg5EFEf17x5IVRS3\n4qrV1tVXbatWq61aq7XOulERGTKTkOS8H6IIAUJUNPb0vj7BOb+dRG7PCsOyLAEAAADAvx/P\n3AMAAAAAgMqBYAcAAADAEQh2AAAAAByBYAcAAADAEQh2AAAAAByBYAcAAADAEQh2AAAAAByB\nYAcAAADAEQh2wBG/ja3LmCDwz7R3NqRn104f++V6ZbWWca2ffgq2vrPLLaRT1pSK9MV+eqaq\nrK5NV5j3h7738goc7+PNMEz96HPvZjyLaygYhjmQqTRSxpLPM/6e+fiH++9mJESkVd5LmjOu\nwwf1HBTWQoHI2s6lUZvA2Pgdz7Rv5Uny56LrMwzT+djDt9E4AJiFwNwDAKgcEvuqXl4v/2qy\nurx/bj1iGEGNGtWKF3MW89/ZkOZ27hSv6p+TEl96V/Y/RydPmbv36G+peUz12k1DR8bEhrUy\nsdmsmzMu50+obVnGhzfz5vRr+YVvNOhysLq8U79eEIirNm3s/jbaNzs3Ty9JOf/PdSlrqd+G\n3Hv72zbucTatgOGJqlSt3sjXOvvJvT+O7zt/7Pv4+M2Hz+5qYi3Sl3y9l4PzLyIAEBGxAFxU\nkLGfiPgiZ3MNIOt6Ep9hrFxGlt715LcEByGfiBTVazVpUEvMY4io6ehk4w2mX+1LRAxPQESd\nv71dZpkjvWoQkZDHENGPWco3n0URde55IrKuGmtKMSP/sBzr7UVE/pPOVuLYjFjkaUNE+zMK\njJSx4DFEdCpbZeaR6FQ9XKyIqGZI7F+P84s2p187MayVMxHZ1RtftNHEl8NA6VpPz323fv36\nw8W6A4B/O5yKBahMhTlpf/32c+L/ogIaDNeW9UXMrCajd8fItELtwIRj6bcu/3b+cuq1/Y1l\nojPL+sw4/7TC9uXVJ/IZ5reY3WXsYzWTDtwXWzdvbyN+84nAO/bszoydD3Mlio/Obp9e28mi\naLutT8uvj5zztxKlX5w//0FO5XZq17BbeHj4R8W6A4B/OwQ7AGN0auUrXd20pqFv3aZth0Uv\nvJ5X9inRhz8P/zFTae8/d21Ea/2VaHKvzrt3hBDRsrCNFbYvkjWLqirLvBZ7o0BjsCv73oKz\nOeqqQbP5VO4lblB5dHlKw5fgTWRe/JWIpE7hUp7hy8cTOc/0tyeiH29XcrCrDJW8DgDwhhDs\n4L9Gd2zznMDW9RxsrERSefU6H0RMW/1QpS1eYpSrTGhRozDn8tig5nJLqZAvUDi5d+wz8uiN\n7ApbbxU3b/ny5cuXL1/8v/AyCxyPPk5ELZaEFt/o9lGCjYCXcWXKY7Wuwi4GxtTTafOjfja8\n4P3SVxuIqM+0BmVVqnjWGX/tH92nk5eznVgoktu5teo6cNuZx/pd2/zsRVYNiSj73kyGYex8\n11U4SNMZ6bfI3V+2Dghu4+qoEFvaeNdtEjF95c18wzChK3yyOnZYEx93K7HY3sWz++cxl7LU\nlThOIrqxoTXDMINvZJ7dFFPHzcbKQigQS6vXazVl1eE3H4lIYUlEuQ9XPCzrPfDJ0Zu5ubnf\nfuBM5b8crPbZ1oVR7QNq2cmlApGFg7tP536jf7j6TL+3zFoXpjcqdfNExW8VE9fBlFcWACqf\nuc8FA7wV5V1jt7S/PxExDOPkWbd188YKIZ+I5F6Bl/MKi8qMdLHii5zDfGyISGDp4N+gppWA\nR0R8kWP8b09MHEDeky1EVPoau252FkS0I83wqqYvXKyIaElKTnkN6q+xc6z/vTLrJx7D2NeL\nNyjQ3kYilNZV6dhPbC2o5DV2Fc467dwiGwGPiGw9a7f8sGWtanIi4vGtlv2dwbLshUUzJkQO\nJCKxdYtJkybNWFjuFXKveo2d8X71fl0cxmcYhmGcqtVq0dTfXiogIqlru6OpL9dQo7zTy09R\nNMearnIikti2CHeSUuVdY3d9fSsiar9gAMMwUmev9t2CWjaspp9v16WX3nAk6pyzdvrXxfuj\n+ev23n5a7iWSZb4cOk325wGORMQT2Pg3bv7hB02qKcT6j8B3afnl1fojriERdfo5pahxUz4g\npqyDKa8sALwNCHbATWUGu9vfhBKRWN5k78Wn+i3qnOvj2jgTkUfXDUXFRrpYERHD8AYsOaDS\nsSzLalVPV4z8gIjE8pYZhTpTBlBesJMLeET0SKU12L61ph0Rdf/raXkNFgU7lmVHu8p4Aus7\nSk3R3tyHXxNR9eCDLGsY7EyZdZSHNRH1X33qRXva72OaEpFjwzXPq7ydmycq7PfZra/FPEZk\nVTfxyM3nJQqfrhjZjIjkXkOLFnFPqDcRyWt8euz2M/2W+6e3+lkK9YMxJdh5+PjWLEea+nk/\n+kBDRC3GbSx40ffxZYFEZGHX7c1HcmNnjJPo+V3bDCOo0eDDoVEzth88mVagMShZ+uVI+akH\nEcmqhlzNeP666zQ5qwb6EFHdqN/Kq2UQ7Ez8gJiyDhW+sgDwliDYATeVGeyGuFgR0diTj4tv\nLMy/4iLmMzzJhVy1fos+2Ll3WluySe1ITzkR9Tr6wJQBlBnsdNpcfWQ0jHUsu79ZFYNjJwaK\nB7u/ljYjopAjL0fy+/h6RDT2cjpbKtiZMmtvCyER3Sh4eVRGnftHXFzc7AV7Xvz6VoJdhf2u\na+lMRBE/PyzRiq6wv5OUiFY+ymVZVlNwSy7gMTzJgZLHQe8dHGh6sDPiUclgZ2nfXV082+uU\ntkIeX+zy5iNhWbYg7a/EeZO7fxSgEL18Lg9PqGjfb/y5tJd1S78cNzd9GRwcHH2kxPsn61YU\nEVXtdLi8WgbBzsQPSIXrwJrwygLAW4JgB9xUOthpCm7xGUZgUaP0EbetjZ2IqP+FNP2v+mA3\n+qrhOaM733UgIo9PDpsygLKDnSabiBiGX/qg3/6mVYiow//dK6/B4sFOPzvHRolFez+ztxRY\neOZqdWzJYGfirCfUsCGiap2/2H/qsqqsI5JvKdhV1K+2ukTAF9orS+06PbI2EX247SbLshnX\nRxCRwmu+QRmdNs9VzDcx2Jl+KtZv+CmD7bUshfp32huOpESVwmdnf9w7b8rodi/Ocoqt6/+Y\n/ry6KS+HMuPumi/rmB7sTP+AVLgOrAnvKAB4S3DzBPxXqHNOa1lWougsKHWAxrudExHdvZxV\nfGOgk6VBMdv6bYko+9rV1x4Dw5dZ8Xksq00rNLxAPju7kIgsnSSmtCNRdBlcRfr0z4n6C+0L\n0rZ98zTfudWC0jdUmjjr2KMb23vb3DmY8MkHta2snZq2C4ycvvjE1YzXmeSrMN6vVnn7tlKj\nLXwqKfXdEM2WXyai7L+ziSj3n5tE5PBBM4PGGZ5lD3vDF/HN2dS1KW9XJY6EEVg3ahs4fubS\no+du3z2V3MLOQpV9IazHLiNVNPl3NiydOahv91YB9d2dbCS2HkOW/GV6j6/6ATGyDmS+dxQA\n4Jsn4L+j3MeWMHyGiHQl70YsfYKO4YmIiNW90b2WH8rF+zMKTmerA+1KZLgz2Woiam5rUrAj\notFf+iVNOht1OnVra+fraxYQUec5LcsqaNKsrTy6HbmW+vv/ffPdgcPHfzn1+/F9v/30/eLp\nE7pN2rV3dpCJQyKion9StERlfsWHTqMjIuZFdjDeL8sWEpFAUi3qy95ldlalqQMRMUKGiMp8\nxoutsPL/76pft7J3vcFIosP63CzQLN+63alUyarNe+85etah/sLUM/OIQsusnn5+TcCHEbdy\nC+29G7VpFtC6ax8vn1p1PH8OaLrIeL/FvNoHxMg6UGW+owDg1SDYwX+FSNaUzzDKzEOlM8et\nn1OJyKVOiSMQ36fmt5WXeNJv1t8/EZHUveabDKNnddn+jIItN54VD3asrmBrWj7DE/dxMPW4\njvfgSTQp5KeJ/0e/hscvu8oXOc+pZ1+62CvMmhE16dinScc+RKQteHJ015rQwVO//9+nW8fm\n9XUw9QG2QgsvEY9R69jfc9TNZKLSBa79/YyI5HXkLzcZ6de+hoOQn6HLnz1njpEQYVWtNtH/\npf16lsgw2h6p6LtZK9ebjCT18Pe7Hue1WpI/2tWq9F6pSyMiYphyvxDviy5f3sotHLv190V9\nGhdtzL5zxvTBv+oHpGKV8Y4CgFeFU7HwX8GX1AhzstQU3Jx4OrX4dk3B9XHnnzI8UaSvovj2\n3ZH7SjbAxo8+RUQNI2u/yTDaxAUQ0YnxJRpPOzfhiVprUyOmqslfZWth/1lfR8u08xPuPzmY\n9DjPscl829Kn0Eybdf6Tzd7e3vWajXtZy8Lx4/6Tl3krWJY9/ErZiGehvx1y3NJzpXfmPfx+\nwvVMIhrWzoWIKu6XEU70tdGqn8SceVKyJd1I/xrOzs5705VEJHMbayvkZf0z+XB6iaFmXJp9\n/JnqFQb/xt5kJOGd3Yho3oAVZT7J8O+1S4nIpubwMuuy2mc7nuQLxFWLpzoiyr7+t+mDf9UP\niBGV+Y4CgFdl5mv8AN6OMu+KvbW9NxGJbZru/ztTv6Uw95+odi5EVLXLy3tgXzzuhD/06yP6\n50zoCrOSItsSkciqwWN16Vtay1De4060hU8by0QMw59+4LZ+izr7r25VpEQ07tRjw1aKKX7z\nhN75qQ2IqOnAGkTU75eX940a3BVb4ay16lR7IZ9h+LF7LhU1kvbX9z4WQoYR6NvRX3cvcx1T\n4cRTT8fwGIZhBD3GLbj04lFzOm3eyW/jG9tKiMi9U8LzpTCh3ye/xxCRyKpe8pnnE9RpsjdG\ntiEihc/oolrfh/kQkY1Pj1P3c/VbMv4+0NLu+WGhyr154oOVVwy2F79p4LVHonp20stCQES1\nQiYcv/Ly5tbCvMffxn9pxecxDH/pi4fAlXo5tJ4WAoZhkv56ecfPbzsX+loKicj1w4Pl1DK8\nK9bED0iF62DKKwsAbwmCHXBTOQ8o1i3qV1cf2tx8G7ZuUkv/5GG5V9CV/BIPKCai0QM+ICKR\n3LVxQF2FmE9EfKHdwl+MZa/iygt2LMs+/mWu/u90w/Zde37axd1SSET+g9YZb7B0sMtL3aCP\nCzyB4mGxB+OVekBxxbP+dfrH+qYcvfzbfdS+ST0vHsMQ0UeTftAX0BY+FfMYhhF2/Kz34JFH\njA/1l8WDLfk8fY9O7tV9alSzeXEk0rPDyOLP8KuwX5Zlv53QQV+mWr2A9m1b1LCXEJFY3uDA\n47yiMhrlnZ41bfQ9uvo08PeqwjCM2CZg6QBvE4OdkefYNWozT1/SlGD3JiPJuLShtuL52X9L\nOydPbx9PDxcRjyEihm8xKOF0UcnSL8epqR8SEY8vbflxt57Bnfx9nHh8qz4TJ+k/BQNGfJGv\n1ZWuVeoBxSZ9QExZB1NeWQB4GxDsgJvK++YJltUe3TDrkxZ1bGUWAomsql+z4VNXpZR8XLA+\n2J3PVZ9YNaF5TXepSGBt79K+x/CDlzNNH4CRYMey7NMLuwYGtqhiKxNaWHv6t41d8UOFT4Qo\nHexYlg2ysyAix4arim8s/c0Tpsz65JZ5ga0aOsilfJ5AZuvywce9E/b8UbzAsf997uEo5wlE\nPh/uqGiwbMblo7HD+zT285BbSfgiC3tnz/bBYSt2nyx9tLPCflmW/eO7hB4dAhwUVgKhxMmz\nXt8xX13OMjzAplU9WjH580berlKRQO7g2rl/5B8ZyjNf1jEx2BkhcxuvL2lKoHmTkbAsqym4\nnzh7QpcW9VwcFCI+31Km8PZvHjp6+pErhu+9Ui+Hdt/Sic1rV7UQ8a0Ujh98ErrnYjrLssvD\nP5RLBFI792yNrnSt0t88YcpbxcR1MOWVBYBKx7Dsq3zDOcB/wChX2fKHuedz1Q2kQnOPBQAA\n4BXg5gkAAAAAjkCwAwAAAOAIBDsAAAAAjsADigEM9V2QUD+/0PRHygEAALwncPMEAAAAAEfg\nVCwAAAAARyDYAQAAAHAEgh0AAAAARyDYAQAAAHAEgh0AAAAARyDYAQAAAHAEgh0AAAAARyDY\nAQAAAHAEvnkCwFBBQYFarRYIBFKp1NxjMb/CwkKVSmVlZWXugZifVqvNzc0lIplMxuPhf8WU\nnZ1taWkpEODvCOXm5mq1WrFYLJFIzD0W81MqlTqdztLS0twDMT+1Wl1QUMAwjLW19TvrFB9I\nAEMajaawsNDco3hf6HQ6rIYey7L6pcAX9ugVFhZiKfQ0Go1Go0HG1dPpdFqt1tyjeC/o//1k\nGOZddor/dAIAAABwBIIdAAAAAEcg2AEAAABwBIIdAAAAAEcg2AEAAABwBIIdAAAAAEcg2AEA\nAABwBIIdAAAAAEcg2AEAAABwBIPnhgMYyMnJkSW+u69/AQAAjot8d1kLR+wAAAAAOALBDgAA\nAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAA\nOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAj\nEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALB\nDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOEJg7gG8X1htzpEdm344cfZeaiYrtPLwbRDY\nb1BrH5tK76jvp0HNEraMdrEy2H7pyLYdB45dv/dYy7d0dPf+sHOvXu399LtyHz3IkTg6K0Rl\nNqjOubxy3urTVx5aufr1Gxv1YTWZkd5ZbfbAnmEZhbpxm3a2kYvLK7ZlcO+zH81e3MfzFSf3\nml577gAAAKCHI3Yvsbr8hPERq/Zfb9Cp36TY2NFD+1WlawsnDj/4IO/dDODudzOnxO90aNR1\n8vS5s6ZEdm1gv2f5pBl7b+n3noibMGvbrfLqbp40+4pDx6VrVoQHqOInz2WNdpT5d2KmhrEX\n8r/ZdbdSZ/D63mTuAAAAoIcjdi9d2xhz9IHNvHXzvaVC/ZZWbT+yGBa6ec6+zgm9TGlBq2P5\nPOa1B7Bu+58u7aaO7uev/7Vm3YZ+lrfHbfofBSVWWPfYo7xmMa0dbKTWXTupty/K1rJyfrkj\nOZX0p6VTyHDXH+cd2cAO/ur1R/ySTsvyyu+wYm8ydwAAANBDsHuBLVy0706N8KVFqY6IiBH0\njBpq91ceEamfXU1K2PDrxX+y1Tp7F6+OfUb2aOGmLxXePbjr0llX5sw9l5JtpXBq1nngqF7N\njVcpU76WVWWmFt9StfMXMe4ZLFHigJ77M5T0aEKPky12bp5Yum5oXdvk1UeHT+14MHGr3CvE\nSKrTqu6tv5NdK7J9Tbcc9ZgDu1LzezhZ6ncpn/6Z+PW2C1dvFAgcWgaGF52BNj73DlNHnl20\n8vYzrdypRr+o2BoPdi/c8H+pBTzP+m2mThxizWeI6Mn5gys377t6/xEjtfML6Dhu+GeWJRPw\nm8ydiFiW1el0Rtb2lbCs8SOeAAAAr0Cr1VZiawzD8HjlnnFl8DdMT5V1pEfYskHrdgTbScos\nsHpYn+OyVmMGfmQr0l4+tm7NvruJO5KdRDwiCu8eTFJZu/6j2tVzfXBmx5ykn/qu2dbb0dJI\nlTKvsbuWHDc++by9d8M2zZv416vn5+0uehF+NGrV/pEDDtWNXjLUTywWlhodaQtufh46Xugo\nlnp0mhQZ5igs9yV/9HPs8MVXlu3YXlWoGtyjn6DZ1MTxDYiI1aRP6j/sgUOT4f272LAZe5NW\nXEotcOm1eHEfT+NzzxO4Dpkwyt+J993CGQfv8WzrtZkwoBPz9I+psxJ9IlfNbFVFk3+5X9/J\ntXtE9GrqrUq7unhBomP4srmBVStr7kSkVCpzc3PLm/JrsN/gUImtAQDAf9nT8LRKbI3P5ysU\nivL24ojdc1rVAyJyE5Wbhxw79hjVvmtjuYiI3Kr0XP3djFsqjZPo+eX80mZR4R/7E5F70Njq\nW05cTVOSo6XxKqX59omLr3Xix1/O/HFkx66Nq/gSeZ0mLUPCw/0dJQKRWMQwPIGo7FSnvJ84\nZ77KpaE25ZxvcFtHIS/n5sUUgWfNaoY3ZxDRwU03rNxDPcR8IsuBvjaLflujYpeLGSbtfMI1\npWTBvCgvCZ+IfP0seoV+ZcrcawyZ3KmxKxH1HO5zYOK5adHhHmI+VXPpbr/p+OVn1KqKOvd8\ngY7t1KWNr0JMXp4zoxUPxYb3drz23AEAAKAIgt1zPJETEaWodY1Lbme12fdTsuSu7oHBnS+d\nObX7Xkpq6uPbV343qF6lg0fRz9Z8HrFERMarlMnDv9VA/1ZEVJCRcuHsmX07t8dFXFiyZbmH\nmF9+JTZx7MSzzoFrlvbK+X3t0DlRNaqvka9asEkWmRTnb1BUnXN279MC38FV7927R0Q2H7lr\n/7qw/nbOME/rtOMpEsXH+lRHRCJZQCMrYTpVPBEbP2v9DwKpkCd0KBqqNZ9HLEtEFnZBbbyP\nzB48pE6jBrX8/Oo3ahbgUcZ/NV5r7s+JRCIbm0q7eTk/P7+ymgIAAKjEv1BExDDGLmnHXbHP\nieVtFALeiROpBtszryaMHDnyZvbjmcMGztt+PI8nq92kzdCJUQbFhBaG4UNX+NR4FQPq7JOz\nZ89+oH5+Gt7C1rX5x93jlk7VqlO23M0xVjHn9MGU3BFju1vwGMemg2ODq6+PiV59K7vmp2Vc\nz/fgwBaWZa+uiRs5cuTIkSNjllwgotNJfxIRlbrtQy7gvfpEynhHMXzrcQvXx381pqm3/f2L\nP00dMzBuw4VKmfvLXnk8QeUx/pkBAAB4JZX4F0ogEPD5xo534IjdcwzPYtxHrnFb5l1tv7im\n7MXZUla7O+GSRNHWO2vjuSfqDbtjbfgMEame/Vxhg7kPkl6pCl/k/PuZM+Lz6ZHNHIs2apVZ\nRFTFyugpSJ2GiB4VaEgmIqKGYdN9D4VeYx1H1rUtXXbrd/dlHgO2xHcv2nJy2qD5lxIzNS0d\nW7sqfzl8W9mvuoRPRFrlP6eyVVVefSKlZV3Zs/NXzeeDQtz9Gncjun9wwph16yl8SSXMHQAA\nAIpBsHup3tBZLS5/ETMsMrhnUN0aVQpzHv96cPvRh5oB8wcJZUdZ9uS3xy99Utcp497lXWs3\nEdG9R1lNZY7lHfMUyrxfqQpf4hndzferuWPEIb0D/KpLxUzWo1sHNm2WVe8c5iwlIh5DBakP\nMzNdFArr4hVF8hYf2MZvnjzfekSII2Ue37P+Jt/Th24t+O5GbLBP8ZLKp9//lqNuN7lt8Y3+\nQ9vrRmxPvJwxoX6Ej2hobPTiiP5dbHnPDmxMkIn5rzGRMpZCXvD9nuRcqaJLEy8m79G+AylS\nt+BKmTsAAAAUh2D3EiNQRC5dvm/zxsP7N+59ms2TWFfzbRA5b2BrbzlR97gBT1Zvmrc/n1/N\n279vdIJi0chtE0c2Sk4uuijNgIX9K1cJGDJ3WtXkb384tHjvkwINo3B0q98mdGxoNwFDRFQ7\nqKlqbfyIqNbbksaWrMcbt2TGuuVr1y6cVsBIfRu2nrcqzOb2poFTor+pmfRZzZfn9W9sPsCX\nVB3mV+JMv5VrX3+rby8lnWKWdZsRH/P1so1LZ8eQxL51z4nDzyza9FoTMSB16RM3KHv9/vWT\nknOlNvZe9TrMjuhuUOZ15w4AAAAv4XEnAIZycnJkiTg0CAAAlSTy3WUt3DwBAAAAwBEIdgAA\nAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAA\nwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAc\ngWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEI\ndgAAAAAcgWAHAAAAwBEIdgAAAAAcwbAsa+4xALxfcnJyVCqVUCiUy+XmHov5qVSq/Px8hUJh\n7oGYn0ajycrKIiKFQsHn8809HPNLT0+3trYWCoXmHoj5ZWVlaTQaCwsLqVRq7rGYX35+vlar\nlclk5h6I+SmVytzcXIZh7Ozs3lmnOGIHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAH\nAAAAwBEIdgAAAAAcITD3AADeR/YbHMw9hPeFmEhs7jG8JwRE9uYew3vl3T2/4b1nY+4BvFcs\nzT0A84s054PkcMQOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4\nAsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ\n7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEO\nAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7AAAAAA44t0FO1abczj566iI\nQT0/+7RH7/5R0xYdv55VtLfvp0HLHuYSUWBg4NrUfONN5T568ChTXVkDu3RkW+y4Eb1CPg3p\n1S8iKm770SsmdqTOubws9su+IT2Hjpl27E5OmWWurfwiKLjHMy1btOWH0aFBQcE3ldqiLeen\nD/405HMNW1Z9o8K7By9MKaNfU9awPJW4tsvDewa+EBQU1Dt0yNy1+7JfLEXRK26iLYN7j02+\nVSkDAwAA4Kp3FOxYXX7C+IhV+6836NRvUmzs6KH9qtK1hROHH3yQZ1Cyc+fONS0Exls7ETdh\n1rbK+Rt/97uZU+J3OjTqOnn63FlTIrs2sN+zfNKMvbdM6WjzpNlXHDouXbMiPEAVP3lumcHM\n5ZN6rE6192mB/leWVSan5LKsbtuVzKIyh29mS116CJhKmRCRaWtYnkpcWyJS1Boye/bs2bNn\nz5o5Y2iPlhe+Xz1+0enKahwAAAAMvOaf/1d1bWPM0Qc289bN95YK9Vtatcw/SBMAACAASURB\nVP3IYljo5jn7Oif0Kl5yxIgRpatrdSyf95rBx3jdddv/dGk3dXQ/f/2vNes29LO8PW7T/ygo\nscKWjz3KaxbT2sFGat21k3r7omwtK+cbdmTl3FPMO3DhxJOwkGpEVPDkm0yNIKyGxffbr1CD\nVkSkVaf8mq2uGV779WZXptJr+CYLaJzxlkXW1evUqfP8l3r+DrfPTDuVTNT8bYwEAAAA3kmw\nYwsX7btTI3xpUaojImIEPaOG2v1leMQuJCioS2LyICdLIgrvHtx16awrc+aeS8m2Ujg16zxw\nVK/mqwb03J+hpEcTepxssXPzRK0qZXNC4k9nrzwr5FX1bhDyeUSr6rLy6pYeWr6WVWWmFt9S\ntfMXMe4ZLFFiyY5K1w2ta5u8+ujwqR0PJm6Ve4WUTnVExAgU3Wwtfjj6F4VUI6KUA6ctHILb\n9L+1Zc5WLduKz1B+6l4dy7ZvbE9E6mdXkxI2/Hrxn2y1zt7Fq2OfkT1auBHRk/MHV27ed/X+\nI0Zq5xfQcdzwzyxfZCmdJnPDnJkHz9/gWdo36zRodJ/mxdfQyCJolffWL13z68W/C8TOXQaM\nu7pivNviDTRpoClra/ryGuDxiC9yMdj4f5FhG5TdtyQEP39FUnf1/nxj1KZdAYVXEr/eduHq\njQKBQ8vAcJsKWwcAAPjPexfBTvXs2GO1tssHjgbb5T7tuvtUUHff5Lnt+o8aWM/1wZkdc5Lm\nOLTdNjhxU5WRAw7VjV4y1I+IXTl2/HF1jeFjYlylhb/uTVoUNcZ2U2JtS0GZdXs7Whq0Pzio\n7vjk5YMiT7Vp3sS/Xj0/b3eRxLNxY08iKtlRGdpNmpwcOn54xFapR6eFc0PLm8IHbZy+/W6P\nlu3KZ+jHY6kun7RQ+AXo1OO/z1AG20keH7nCF7u2txET0YYJ00/JWo2JHWgr0l4+tm7N/MjW\nTZLtNFdGzVhZu0fEtAhvVdrVxQsSp7sFzA2sqm/83MzYzr2+WDDQ9f6ZHXOS5jh32N7D3sL4\nAvZ2tCRi10RFHxc0GjPhK4kqZWv8hBv5hW6GUza2tiYurzrn7pUrAiIinTbtzh+rjj3tMDbO\noEyTIQ0Sorc8VHdzEfGJ6Mbmwxb23VpJcyb1n/nAocnwsdNs2Iy9SUuOpxcYRsJidDqdVqst\nf/+r0el0ldUUAAD81xQWFup/KPrDVLSlsgiFwvJ2vYtgp1U9ICI30etczydtFhX+sT8RuQeN\nrb7lxNU0pcDRVsQwPIFILBbmp2794UHul+ti2tpJiMi7Vu3LfUNX7767JLRGmXWpVPLw7RMX\nX+vEj7+c+ePIjl0bV/El8jpNWoaEh/s7SgQicVFHZUxKeT9xznyVS0Ntyjnf4LaOQl7OzYsp\nAs+a1awMSrp83Ei7a9dPz1RtLZ4cylSFt3PmW0ja24h//r+HwX08/ziVZuU+VL80jh17jGrf\ntbFcRERuVXqu/m7GLZVGVnC+QMd26tLGVyEmL8+Z0YqHYllR4wr/ceEd/InILWis6+bjVzJU\nVDLYlbkI+Wk7D9zPm7ZlVEMrIZGvR9yd/mP3EFHxKRtfWxOXN/Ny4sRixzotnZv7V5UalLHx\nGWLLP7b2UsaURg7EFiadSfMb1S3tfMI1pWTBvCgvCZ+IfP0seoV+Vcb74wW1Wp2b+wq3YgAA\nALwlz549K/4ry7IGW94Qn89XKBTl7X0XwY4nciKiFLWuccntrDb7fkqW3NW9zJOYelU6eBT9\nbM3nUck7FJ5ducQXu7Wzk+h/ZXgWwc6WCafuUWiNCusW8fBvNdC/FREVZKRcOHtm387tcREX\nlmxZ7iHmlz8nNnHsxLPOgWuW9sr5fe3QOVE1qq+Rr1qwSRaZFOdvUNTCobsV/5uf/spsZJdM\nQuduthIi6tTSMfbwz9Tb7ft0pXvo8yOCgcGdL505tfteSmrq49tXfn9e3S6ojfeR2YOH1GnU\noJafX/1GzQI8Xr6crp1KztG0Bcy8dJ4vqdHQ6nlglbl/QrTHoKLxtS2vZQNOzb5aPbmu/mdV\nTvpP276aM3bU3M2rfYvd28HwZZ/Xtv16w2/U6JOcB1vuFVpMaeaYtjRFovhYn+qISCQLaGQl\nTC+jBwAAAHjpXQQ7sbyNQrDqxInUoGCP4tszryaMjP51+tZvGliVe0RRaGEkXRHLElGJUMjj\nMcTqTKlLROrskwuWHwuLmugm4hORha1r84+7N27p+1nv6C13cyb7lHtZlzrn9MGU3Knzulvw\nGIumg2ODr82KibbUZNePcytdmOFbdXew3Lfv9j+Sa9bVw/Qh1q1bM+W+3TdT7Z5pdEPq2xGR\nrvDprIiR16W1OraoX7tJzQ6BH44bPYOIGL71uIXre1w5d+HS339f/Gn3xlV1Po2LC6+vb9zC\nsoI5lrkIrFpXYt2YssoYXdvyWjZCLLPrOCh25b4BW69lTa9vX3xX3cHNc77c9KSw8511v9jW\nGe4o5KWVuiFDLuAZCXZisdjIcelXlZdneOknAACAiYoOp6lUqvz8fIZhbGwq80JxhjF2N+S7\neNwJw7MY95HrP1vmXc0p9oA0Vrs74ZJE0dZIqquQTa3aWtX9nzOVz5vUKfem5Nk19TBeqwhf\n5Pz7mTPbz5cIDFplFhFVMT4qnYaIHhVo9L81DJvuy0/N5zuOrGtbZvHGHzvn3Plux9Ws6r1q\n6bdYOIXYCnQJuw8KJNVay0VElPsg6dwT9fKFsf17BLZu3shd8fzEYtaVPavXfuPu17hbz7CJ\ncfMWD/O5uH+9iRMsj03dWlrlP3/mPT/ln/dgfxll3mxty6QrTNexrEhkmAhlVcPdhaqkv1JW\nX0xvO6wBETm2dlVmHb794ml/WuU/p7JVRlpmGIZfeYx/ZgAAAIwo+mvC4/EMtlSKombL9I4e\nd1Jv6KwWl7+IGRYZ3DOobo0qhTmPfz24/ehDzYD5g16jNR5DBakPMzNdFE59O7juXzlxLn9Y\niKtUc/LbxKuF8pk9TQ52Es/obr5fzR0jDukd4FddKmayHt06sGmzrHrnMGdpiY4U1sUriuQt\nPrCN3zx5vvWIEEfKPL5n/U2+pw/dWvDdjdjgMu4HcWrzQeHGjVeJ5tR6nuIZRtK3qiz+0ENF\nzfH6ECGUebPsyW+PX/qkrlPGvcu71m4ionuPsurIC77fk5wrVXRp4sXkPdp3IEXqFvwai1ac\nlWtYp6qHF0xb8eXALhbKlG2r/qAXGb+y1lbv5c0TROrc9GPfJPLFboO8rA3LMaIhTRxmLZ5J\nwtr93KyIyL5+hI9oaGz04oj+XWx5zw5sTJAZOzMOAAAARO8s2DECReTS5fs2bzy8f+Pep9k8\niXU13waR8wa29pa/Rmu1g5qq1saPiGq9LWlsxOJ5soTENfOnZWt4bt6Nxi2IqGP5CocAA4bM\nnVY1+dsfDi3e+6RAwygc3eq3CR0b2k3/uODiHZWsxxu3ZMa65WvXLpxWwEh9G7aetyrM5vam\ngVOiv6mZ9FlNwyOuErtuCsHmfGnzoltKiahez+o050LVT58HQQv77nEDnqzeNG9/Pr+at3/f\n6ATFopHbJo5slJwcNyh7/f71k5JzpTb2XvU6zI7o/hqLZjD+YQsXSxcvXTZzEilqDI4Zf2HU\nCLmAR5W6tlTy5glGIHLzCpiyZKRzqSN2ROQT1kH9+SbPPpN4zwvbzYiP+XrZxqWzY0hi37rn\nxOFnFm16szkDAABwHsOyr/5VVvAvp1U/OHT4z2Ydu9gJGCJSZhzqNXDFou27a0hwVIyIKCcn\nR5ZY6rAiAACAKSKfJyulUpmbm8swjJ2d3Tvr/B0dsYP3Co8vP7ox6US6ZVRQgECVumNxsnX1\nXkh1AAAA/3Y4YvcflXf/ZMLX2/78J6WQJ/Nt1HrIqAEeCHYv4IgdAAC8Phyxg3dP6t5iwpwW\n5h4FAAAAVKZ38bgTAAAAAHgHEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAA\nOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAj\nEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALB\nDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOEJg7gEAvI+ehqcJhUK5XG7ugZifSqXKz89X\nKBTmHoj5aTSarKwsIlIoFHw+39zDMb/09HRra2uhUGjugZhfVlaWRqOxsLCQSqXmHov55efn\na7VamUxm7oH8R+GIHQAAAABHINgBAAAAcASCHQAAAABHINgBAAAAcASCHQAAAABHINgBAAAA\ncAQedwJQBvsNDuYewvtCTCQ29xjeEwIie3OP4b1iZ+4BvD9szD2A94qluQdAkay5R2BOOGIH\nAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAA\nAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAA\nwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAc\ngWAHAAAAwBEIdgAAAAAcgWAHAAAAwBEIdgAAAAAcITD3AN4WVptzZMemH06cvZeayQqtPHwb\nBPYb1NrHRr+376dBzRK2jHaxCgwMDF69bZCTpZGmch89yJE4OitElTKwS0e27Thw7Pq9x1q+\npaO794ede/Vq72dKR+qcyyvnrT595aGVq1+/sVEfVpOVWSy2T8ifeeqQFVvDXK2Kb78wf+jU\nE489AhfED/ExfbRbBvc++9HsxX08TVmoN/TaKwMAAAB63Dxix+ryE8ZHrNp/vUGnfpNiY0cP\n7VeVri2cOPzggzyDkp07d65pUUG6PRE3Yda2W5UysLvfzZwSv9OhUdfJ0+fOmhLZtYH9nuWT\nZuy9ZUpHmyfNvuLQcemaFeEBqvjJc9nye2H4zImN10tsYjXrfn/KZ5jXHrkpC/Um3mRlAAAA\nQI+bR+yubYw5+sBm3rr53lKhfkurth9ZDAvdPGdf54RexUuOGDGidHWtjuXzXjMDGa+7bvuf\nLu2mju7nr/+1Zt2Gfpa3x236HwUlVtjysUd5zWJaO9hIrbt2Um9flK1l5fyyO3JqWy/txBo1\nmyB6keTyHibf09l/KM/659VnpFfmQr0qI4vzJisDAAAAelwMdmzhon13aoQvLUp1RESMoGfU\nULu/DI/YhQQFdUlM1p9hDO8e3HXprCtz5p5LybZSODXrPHBUr+arBvTcn6GkRxN6nGyxc/NE\nrSplc0LiT2evPCvkVfVuEPJ5RKvqsvLqlh5avpZVZaYW31K18xcx7hksUWLJjkrXDa1rm7z6\n6PCpHQ8mbpV7hZSX6ojI2iOMf2LCpnu5gz2en669vvmEbd0hFrcX6H9VP7ualLDh14v/ZKt1\n9i5eHfuM7NHCTb9L+fTPxK+3Xbh6o0Dg0DIw3KashXpy/uDKzfuu3n/ESO38AjqOG/6ZJY8p\nb2VMXJw3WRkAAADQ42CwUz079lit7fKBo8F2uU+77hVdXbZv8tx2/UcNrOf64MyOOUlzHNpu\nG5y4qcrIAYfqRi8Z6kfErhw7/ri6xvAxMa7Swl/3Ji2KGmO7KbG2paDMur0dDa9IGxxUd3zy\n8kGRp9o0b+Jfr56ft7tI4tm4sScRleyoDO0mTU4OHT88YqvUo9PCuaHGpsETD2lo//X6vwdP\na0pExBauPZfWbL6fbtrz/RsmTD8lazUmdqCtSHv52Lo18yNbN0l2EvFYTfq0UTMfODQZPnaa\nDZuxN2nJ8fQCl5Jta/Ivj5qxsnaPiGkR3qq0q4sXJE53C5gb6G5kZUxZnDdZGSLSarUajcbY\nmrwKrVZbWU0BAMA7plKpzD2E54r+MFXukBiGEYnKveicg8FOq3pARG6i17l8UNosKvxjfyJy\nDxpbfcuJq2lKgaOtiGF4ApFYLMxP3frDg9wv18W0tZMQkXet2pf7hq7efXdJaI0y61KpYOfb\nJy6+1okffznzx5Eduzau4kvkdZq0DAkP93eUCETioo7KmJTyfuKc+SqXhtqUc77BbR2FvJyb\nF1MEnjWrWZUuTES+Ya0yxqwp0AVY8Jjch1sf6KosqGq1/sVex449RrXv2lguIiK3Kj1Xfzfj\nlkrjJBKlnU+4ppQsmBflJeETka+fRa/QrwxaVueeL9Cxnbq08VWIyctzZrTioViWn5psZGVM\nWZzXXhm9wsLC3Nzc8vYCAMB/R05OjrmHUALLspU7JD6f/98KdjyRExGlqHWNS25ntdn3U7Lk\nru5GTmJW6eBR9LM1n0cl71B4duUSX+zWzk6i/5XhWQQ7WyacukehNSqsW8TDv9VA/1ZEVJCR\ncuHsmX07t8dFXFiyZbmHmF/+nNjEsRPPOgeuWdor5/e1Q+dE1ai+Rr5qwSZZZFKcf5kVrFz6\nevD2rL+TPcJTfn3jL3b1h4mL3TkRGNz50plTu++lpKY+vn3l96LtacdTJIqP9amOiESygEZW\nwvSSLVvYBbXxPjJ78JA6jRrU8vOr36hZgIfi0c/GVsbExXmtlQEAAICXOBjsxPI2CsGqEydS\ng4I9im/PvJowMvrX6Vu/aWBV7oEfoYWxDMGyRFQiFPJ4DLE6U+oSkTr75ILlx8KiJrqJ+ERk\nYeva/OPujVv6ftY7esvdnMk+NuVWzDl9MCV36rzuFjzGoung2OBrs2KiLTXZ9ePcyu2MEQxs\n6rB07aURMwOSzj9tsci3aI+u8OmsiJHXpbU6tqhfu0nNDoEfjhs948V8DCOvXMAzCHYM33rc\nwvU9rpy7cOnvvy/+tHvjqjqfxg2tamxlqKLFee2VKSIWi8VicYXFTISDfwAA/152dnbmHsJz\nSqUyLy+PYRhbW9t31ikHH3fC8CzGfeT6z5Z5V3PUL7ey2t0JlySKtkZSXYVsatXWqu7/nKl8\n3qROuTclz66ph/FaRfgi59/PnNl+vkRS0iqziKiK8VHpNET0qOD5qfqGYdN9+an5fMeRdY29\nUbz7tcu4kvTo3uaH5NLP7eVD73IfJJ17ol6+MLZ/j8DWzRu5K16GGMfWrsqsw7eV2hdj++dU\ntuFlAVlX9qxe+427X+NuPcMmxs1bPMzn4v71ZluZF5hKZeKwAQDgPVS5fxHe0FsakpHpc/CI\nHRHVGzqrxeUvYoZFBvcMqlujSmHO418Pbj/6UDNg/qDXaI3HUEHqw8xMF4VT3w6u+1dOnMsf\nFuIq1Zz8NvFqoXxmT5Pji8QzupvvV3PHiEN6B/hVl4qZrEe3DmzaLKveOcxZWqIjhXXxiiJ5\niw9s4zdPnm89IsSRMo/vWX+T7+lDtxZ8dyM2uNz7QSydQryFO2YsOOzQcLyo2HtAKPNm2ZPf\nHr/0SV2njHuXd63dRET3HmU1lTna14/wEQ2NjV4c0b+LLe/ZgY0JslKnQYXygu/3JOdKFV2a\neDF5j/YdSJG6BVs6fWaWlQEAAIDiuBnsGIEicunyfZs3Ht6/ce/TbJ7Euppvg8h5A1t7y1+j\ntdpBTVVr40dEtd6WNDZi8TxZQuKa+dOyNTw370bjFkTUsXyFQ4ABQ+ZOq5r87Q+HFu99UqBh\nFI5u9duEjg3tJmAMOypZjzduyYx1y9euXTitgJH6Nmw9b1WYze1NA6dEf1Mz6bOa5ZypZPgD\nWjhGH07pMcm3+GYL++5xA56s3jRvfz6/mrd/3+gExaKR2yaObJSc7CWxmxEf8/WyjUtnx5DE\nvnXPicPPLNpUslWpS5+4Qdnr96+flJwrtbH3qtdhdkR3Ip6ZVgYAAABeYljWyFcYAPwX5eTk\nyBJxaBAA4N8p8n0JNkqlMjc3l2GYd3nZHwevsQMAAAD4b0KwAwAAAOAIBDsAAAAAjkCwAwAA\nAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAA\njkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAI\nBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCwAwAAAOAIBDsAAAAAjkCw\nAwAAAOAIBDsAAAAAjhCYewAA76On4WlCoVAul5t7IOanUqny8/MVCoW5B2J+Go0mKyuLiBQK\nBZ/PN/dwzC89Pd3a2looFJp7IOaXlZWl0WgsLCykUqm5x2J++fn5Wq1WJpOZeyD/UThiBwAA\nAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARuCsWoAz2GxzMPYT3hZhIbO4xvCcE\nRPbmHsN7xc7cA6hYJGvuEQC8azhiBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAA\nAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAA\nHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMAR\nCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFgBwAAAMARCHYAAAAAHIFg\nBwAAAMAR3Al2y8N7fj77UvEtt46sCA4KWrL/KhEFBgauTc2vrL5UWYcDAwOfFOoqq0EjLh3Z\nFjtuRK+QT0N69YuIitt+9ErRrtxHDx5lqsurqM65vCz2y74hPYeOmXbsTk55xd7Sur1Gxdee\nKQAAAOhxJ9gZuPvjqsj4Q22Hzvvyk5pE1Llz55oWAnMP6pXd/W7mlPidDo26Tp4+d9aUyK4N\n7PcsnzRj7y393hNxE2Ztu1Ve3c2TZl9x6Lh0zYrwAFX85LmsiT1W0rq9asU3mSkAAADo/fuy\njinu/rz6y6UH2g6bP7qLj37LiBEjDMpodSyfx7zzoRERaVV5fLHUlJLrtv/p0m7q6H7++l9r\n1m3oZ3l73Kb/UVBihXWPPcprFtPawUZq3bWTevuibC0r51cwX1PWjUxbujIrGvEmMwUAAAA9\nDh6xu3987djF+9sOf5lOiCgkKEh/ZjC8e/DO+3/NiOjf/dPgfgOGxm//VV9Aq7yXNHfqkH4h\n/QaN2nL8dmyfkFWP8/S7npw/OGPcF317dO834PNZX+/K1z0/+JV17UjsmCEhn34WPiIq+ceb\nz3tiCwMDA3c8LSjqOrx78LKHuUTU99OgfWlP186NGTBkMRFdXz2qZ/iKomLP/lkRFNwrRa0t\nPpd8LavKTC2+pWrnL2ImDWWJVg3oueJR7v2DE3qEzi1zHULr2v6++ijLqg4mbpV7hVSY6oyv\nW3lLp0zfE1hS32EHDSqymoxdK/83etjAz3r2GxU99+jVzNK9v8lMAQAAQI9rR+xSTqz7cuFe\n20YTRnf2Ka/Mvslz2/UfNbCe64MzO+YkzXFou623o8WaqOjjgkZjJnwlUaVsjZ9wI7/QjYiI\nNPmXR81YWbtHxLQIb1Xa1cULEqe7BcxoTUQ0a8bOT4YO7ucs/uunHZuWRmpcNvSvaWN8eCfj\np/u3Dp8TXoOIqoZ0Ue1b+UfukAZWQiL6Y80ZG6/BriJ+8fKDg+qOT14+KPJUm+ZN/OvV8/N2\nF0k8Gzf2JKLBiZuqjBxwqG70kqF+ZfbVbtLk5NDxwyO2Sj06LZwb+ubrVubS9bLvtG5dK/1e\nZdrpyOjERt3rGNTaFP3loYLaQz8f527NXP11/7JJw7Rfr//YxbKyZkpEWq22sLDQ+BxNp9Vq\nKy4EAO89pVL5bjrS6XREpNFo3lmP7zONRqPT6bAURFT0h6lyV4NhGLFYXN5eTgW7nDs7xpy9\n2a5j9f87/PXpjEbNbCVlFpM2iwr/2J+I3IPGVt9y4mqaMp/Zd+B+3rQtoxpaCYl8PeLu9B+7\nR19YnXu+QMd26tLGVyEmL8+Z0YqHYpl+l8+omb1aVSGimrUb5l/pdyj+RP+EbsZH+Mzp894f\n1dP/LFF0bmSVlHzscYNP3HWa9DVXs5rPbWpQ3rdPXHytEz/+cuaPIzt2bVzFl8jrNGkZEh7u\n7ygRiMQihuEJRGKxsHRHWuX9xDnzVS4NtSnnfIPbOgp5OTcvpgg8a1azeu11K3PpGEdbOzsJ\nEWnVKdO/XO/QfmxkR/fiVZTpe7+5/uyrrePqSIVEVMOnjvZMv20rLn88s0mlzFSvsLAwNze3\nvL0A8N/0jv9ZKCwsrMT/Yf7b4d/kIizLVu5q8Pn8/0qwK0i7GTYt/jN/a/ZS+JJJK9evGiNh\nyjj/WKWDR9HP1nwesZR56TxfUqOh1fPcIHP/hOh5sLOwC2rjfWT24CF1GjWo5edXv1GzAA+F\nKouIqGtDu6J22nRy3rvlBFEFwc65fYnQ0+cj5ynf/ECfDMm4mJgncBnsZV26iod/q4H+rYio\nICPlwtkz+3Zuj4u4sGTLcg8xv3ThF9jEsRPPOgeuWdor5/e1Q+dE1ai+Rr5qwSZZZFKcf+nS\nJq4blbV0LzpUb4yJvu3QYfUXHxpUyX1wnmXZyX0+K75RqkkhamJQ8rVmCgAAAC9xKtg5NJj0\nWX17Ivp89tjTg2ZP2dR+QVjd0sWEFoZBgVXriIpFGYZf7EfrcQvX97hy7sKlv/+++NPujavq\nfBoXHURUogIJrIQMU3b+KGRf3pBqKSux4O7Bgco9y//KD7+e9JdT8wmSknckqLNPLlh+LCxq\nopuIT0QWtq7NP+7euKXvZ72jt9zNmexT7mlfdc7pgym5U+d1t+AxFk0HxwZfmxUTbanJrh/n\nVmZ5E9eNylo6vRMrJ+x/6Lpw7eDSiVAgFTF86fbkdcU3MrwSx95ee6ZFJBKJRFLugcZXlZNT\n7tNhAOBfxN7e/t10lJWVpdFoLCwspFKTbozjtvz8fK1WK5PJzD0QIlsZvQAAIABJREFU81Mq\nlbm5uQzD2NnZVVy6knDq5glG8Hw6YkXAV0Ob3Phm2r67Jv2FtqlbS6v858+854fQ8x7sL9qV\ndWXP6rXfuPs17tYzbGLcvMXDfC7uX6/fdeBCRlGx43vuW7q2Lfo1V/M8zKmenczVlvukEYmi\nQ4CVcP3hU1se5H4SZnhxG1/k/PuZM9vPpxffqFVmEVEVq3JPShIR6TRE9KhAo/+tYdh0X35q\nPt9xZF3bMou/9rrp3TuyZOHh9NELY8s8tGbp1JF0+YcytJLnxFu/mpbw0+PiZV5/pgAAAFAM\np4JdcR6dJ/fwlq6fPC9dU/FjhK1cwzpVtVwwbcW5yzf/Pnds/pw/6MXSCOUF3+/ZuHj70Wu3\n7l6/dHrngRSpWwt9rd8Wx37z8283r13cs3JK8p38HmOaEhExQl9L4fHlO26mPLl79dyyKV8z\n5ZzW1OvV0fXGuiU8WfNu9hYGu/gSz+huvsfnjlm+Ze9v5y9evnzp5JG9M8cukVXvHOYsJSIe\nQwWpDzMzsw0qiuQtPrCVbJ48/9i5y1fO/ZI4bdRNvqePIH3Bdzcqd92IKOfW/qjlP7X6fEo9\niTorKysrK+vZsxKhUCRrPKS+3eaJsw6dOHfn1rU9qyZ9fyW9XQvHSpkpAAAAFMepU7ElMb1n\nxBwPi45ZdnzluDYVFeYNW7hYunjpspmTSFFjcMz4C6NGyAU8IpK69IkblL1+//pJyblSG3uv\neh1mR3Qn5Y88gWL64Jbrk5dvfap2ru41cPLybu7P70uYMmPo/Pidk774Vq1j/T4a1iprvZGO\n3YOC2F1LPLr3KXNvwJC506omf/vDocV7nxRoGIWjW/02oWNDuwkYIqLaQU1Va+NHRLXeljTW\nYDrjlsxYt3zt2oXTChipb8PW81aF2dzeNHBK9Dc1kz6r4NbdV1o3evTjIaWOPbZi/LEXT27h\ni92/3ZlQvEzXqYtVict3rpybWSh086w3bk5M/VLH4V53pgAAAPASw7ImfiUBl2nVDw4d/rNZ\nxy52AoaIlBmHeg1csWj77hqS179sn2XVWTmswrrc+1b0Cp5+33vw2tnJO2tbcjhk/8vk5OTI\nEsu4kQUA/mUi39EfOFxjVxyusStilmvsECaIiHh8+dGNSSfSLaOCAgSq1B2Lk62r93qTVEdE\nDCNSGM8GrKZQp/1h6W4r975IdQAAAPDmkCeIiBi+bOaCyISvt43ZF1/Ik/k2aj1rVK+33anq\n2U89wuJ5QsWIZV3edl8AAADwX4BTsebDah78c0vk4umIw3XvGZyKBeAInIo1B5yKLYJTsf8x\njMDNy9j3dwEAAAC8Es4+7gQAAADgvwbBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALB\nDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwA\nAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOALBDgAA\nAIAjEOwAAAAAOALBDgAAAIAjEOwAAAAAOEJg7gEAvI+ehqcJhUK5XG7ugZifSqXKz89XKBTm\nHoj5aTSarKwsIlIoFHw+39zDMb/09HRra2uhUGjugQDASzhiBwAAAMARCHYAAAAAHIFgBwAA\nAMARCHYAAAAAHIFgBwAAAMARuCsWoAz2GxzMPYT3hZhIbO4xvCcERPbmHsN7xe7ddxnJvvs+\nAf5dcMQOAAAAgCMQ7AAAAAA4AsEOAAAAgCMQ7OD/2bvzgJrS/w/gz7n77bbdVlpEpGxlX8bY\nx9KMqZC1lCwhYQhJKNv4ZjfK0GaJys4Mgx9mhr6279hmjClmBpNCaNFtufv5/XFJpW63tDnz\nfv1177nnec7nPLr19pwNAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAA\nAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhONVa+/6FA0lnr6a/yOkbsWMc98r1\np8792lvUUWUAAAAAUC26Bzt6u9+ns3Zf0bzRW/bNFwXfDOh0su/Ubed3zuJQdVQeAAAAAOhK\n10Oxf+8fOWv3lUGztvz6Z6Zmidhh3df+vS7GBLrtSKuz8gAAAABAV7oGu9VB50zaLD4fOde5\nlZVmCUfPafGOyys6mF4MX1Vn5QEAAACArnQNdodfFbecNOH95SN87KXZ39dqSQAAAABQE7oG\nu2Z8tuTP/PeX5957zeZb1WpJAAAAAFATuga7JT0s/trnc+2VtPTCoqc/+h14aNYpuA4KAwAA\nAIDq0TXYjTwQ3YxK79ei4/QFKwkh95LjVy2c1NZhaLq66bZDY+qyQgAAAADQia7BTmj++e1f\nvxvVjRW7KZwQ8vPSoLCN+wx6jj52+7dRTUV1WCAAAAAA6KYaNyg2dHBN/NE17uWje38/VbKF\nNg7tbIz5dVcZAAAAAFRLNYJd8bO0yzf/yC5UaN7+8/DPko/Gjh1by3UBAAAAQDXpGuweH1nY\nZfymHIW6wk8R7AAAAAAanK7Bbvb0qHy2bVjk2gFtm+EBYgAAAACNkK7B7sc8mcuKE+H+LnVa\nDQAAAADUmK7Brrchr8hCUKel1ANaJTl/MOFsyo30rFyaq2/n2MnNa3Lf1sa1vqEJI9x7Ru2f\nY6X//kd3zycf/OHig/TnKraeha1DP9exYwe10XxU8CxDIrBoKuZV2Kdccm/HuphrqU/1rdt4\nzVvQr7lBhastG+/5a6Hc89tEH+syW7+z3n95ynM7tw3bprbWfUf2Txl347OvN4+3d3Nz84hJ\nnmypp3vb6qrxyAAAAICGrrc72bzysxsLJ994UVyn1dQpWl0UtTBg56kHnYZ5LV62bI6/VzNy\nf2PwjNMZhfVWwz/frVq67ZB5l+FLVkSsXho0vJPZ8cjFK0881HyaEr5odfLDytruW/x1qvnQ\nrbHf+naXbVsSQVe+FYpNpex9UGYRrdz1yys2VfOD6K6urk7CalxqU10fMjIAAACgoeuf6naB\nx6dFmvdq1mqQa39bs/LTNjExMbVdWO27vzf0Qobxul3rHURczZI+Az4TTvfet/aka5SuF3+o\n1DSbVfN4tOvAr1YDl8/xenNE26lD5zZ6j+Yn/Ie4R1fZ9uKzwp6hfc2NRYbDh8kPbMpX0Ubs\niiuxHOD8MiVWTkfx3ia5wqdJ6WqzfkZ5f9e08pkzZ9a06TtaRu9DRgYAAAA0dA12/13cJ/J+\nLiG5F04fff/iiY8g2NGKTScft/TdWpLqCCGE4oxZ4G/6+5sZO/nrtLioPVd/+ztfrjazajV0\nfODo3jaaj3xHegzfujp1bcTNzHx9sWVPV7/ZY3tpb1KhIhUty80qvaSZ66xQ2xyakOhJY07l\nSMmzRaMv9z60r4KntHl3MEmKuTBj+dDT0YlGrTwrS3WEEEM7H3bKooT0gil2bw7XPtiXYtJh\nqvDRhir3VPrq1+jtyXfS/izmmH/q5ltylNrT3f3z6CTNodgXt07v2Hcy7ckzSmTapvvQ+TNG\n6bEolSxzX1T0TzdSXytYzRw6eU4L6NPCQPvo1dbIAAAAgIauwS4g8oa+ree5lJ097UzqtKA6\nInt98blc9fknFuWWG7UeOPLtKWd7Fq24YtBn7jI/E57q3sVdseuD+nZLsuS9OVp9cknEwImz\n/ZytM64fXBu31nxA8jgLPe1N3jfFvcPCpMjJQVf69+rm4uzcxsGWJ7Dv2tWeEDIlOqFJ4KQz\nHUK2+LepsO3AxUuSvBfOCEgU2Q3bGOGtbW9Z/Kmdzbbv/mNKWA9CCKEV8Tdf9lzfRh1WxZ7S\nyuyw2asyzLvNmBdmTOeciNtyKbvYqmzfyqJ7s1fuaDc6ICzAQfYybfOG6BU23SPcbHfMW3hJ\n3nLG3FBrkeLqibhNC+aaJES30+NoGb3aGhlCiFKpVCgU2sakOlQqVW11BQC1qLi4kZ4OpFar\nCSFKpbLRVliflEqlWq3GUBBClEql5kXtjgZFUQJBpZc96BTsaHXh70XKPjvXfqSpjhCikmUQ\nQmwqj1yEEIuho2cPGt7ViEcIsWkyJua7lQ9lSkvemxP2RT0X+A5xIYTYus9rsT8l7aWUWOhp\nb/I+x/Hh29qm/Pjf67fPHzy8dydbYNS+26eevr4uFgIOj8+jKBaHx+dz32+okj6JXrteZtVZ\nlXnT0WOABZcl+eu3TI69U/MKrs8ghDj69MmZG1us7i5kUQVPEzPUTTY0099d1Z6+vBV1XyrY\nsG5BKwGbEOLYRjjWe025nuUFt4rV9LDP+zuK+aSV/aoQ8VO+QVFW0tmMgq92hQ4wFRBCHNq2\nuzfBO+boP1u8W2oZvVoZGQ2lUllYWH/nSgJAg2jkX3OFQlGL/8P82JVkGqBpunZ/dNls9ocG\nO4ri2PHZuXdeEq9WtVdYvWLxLAkhmXJ117LLaVX+k8w8I2tbIzbl5uF69/qVo+mZWVnPH6X+\nUq6HJoPtSl4bslmEJoQQ7U0qZOfSx8+lDyGkOCfzzo3rJw8dCA+4s2V/pB2fXXkjOnpe8I2m\nbrFbx0p+ifdfu6Bli1ijnRsSDILiwiu+AY2+1QQ71vHdj/Nn2hs92Ptf047T+aWunKis7JeX\nMgXiIZpURwjhGXTvos/NLtuz0NS9v8P5r6dMbd+lU9s2bTp26dndTvzs57tsvs1A0zc/ZxRL\n6NFUL+pKOnkb7CocvdoYmTcoimKzq15NR5r/fANAY1OLX/PapVaraZqmKIrF0vWSRAajaZqm\naQwFIYSmabVaXes/GNp70+1QLMU/uW1ip4AvtvS9NPfL9h/j/Yn5Rv3FnJ0pKVnuHnall+em\nRQWGXF2ReMSF/3p1QOADUduhvTu26+Y02K3f/DkrS6/JFZb/haJWvNLepBx5/uUNkRd9FgTb\n8NiEEKGJda8hI7t+6jhqXMj+fyRLKr/rilxy7XRmwfJ1I4UsSthjyjKP+6tDQ/SU+R3DKz+f\nj+L49TDfGn935qrucbde9d7kqFPZ713ZYMRhlQt2FNtw/sbdo1Nv3rn7xx+//XR07872I8L9\nmxFCyrRlsShCv4tH749erYxMCT6fz+fX2pOLJRJJbXUFALVILBY3dAkVy8vLUyqVAoFAJBI1\ndC0Nr6ioSKVSGRhUfE+ufxWpVFpQUEDq90dX13PsZuz505ojmefWYbGxpbl++SNiT548qe3C\nahnFEs7/zDp8/7q0QZudDN4eKqVVR6PuCsQDOulz8x/F3Xwh33N0mTGbIoTIXv9cZZ8FGdVr\nwuY1/eX6df6t7KCe7071U0nzCCFN3hvSMtRKQsizYiUx4BFCOvuscDzjfZ+2COyg7ci4g9fA\nnFlxz9IfPCVWXjbvvmBayrboay3977lHUq8WAjYhRCX9+0q+rEnZbvNSjx+6qpw22dO2Tdcv\nCXlyetHcXbuNt3VVyQ7+nCvtLxYQQmi19ERmoekwO6Kbmo8MAAAAlKJrsDMzMzMbOrxjndZS\nx5z9V/e+Nyt0epDHGPcOLZsoJM+vnj5w4aly0vrJhBCugQNNXz526e4XHSxz0u8djk8ghKQ/\ny+thYFHZjKeWJhWuzxbYh3zpuCZiLt9zXPc2LUR8Ku/Zwx8S9hm0cPVpKiKEsChSnPU0N9dK\nLDYs3ZBn1PsTk237lqw3nOlpQXIvHd/9F9u+NXm44bs/l3lUerdhPUtPB+7BlRvOmXdeyCs1\nm6albLOOAa15/stCNgdM/NyE9fqHvVEG7x0G5RoVf388qUAk/rxbK6rw2ckfMkU2HnqWowZb\nn9oRHMGe7mktUl4+Fp2mMFo1RudgV9ORAQAAgNJ0DXbHjh2r0zrqAcURB22NPLlv77lTe0+8\nymcJDJs7dgpa59fXwYgQIjQbGT7pRUzCulNF7OYOLhNCosSbApODA7skJZWcc1aOliaV1dB9\nakRYs6RjZ89sPvGiWEmJLWw69vee5/2l5g4y7dx7yOK3zVzQNzluXtl2rPlbVu6KjI/fGFZM\niRw7912308f4UYLf0pAjTnGjnCo5UkmxJ/W2CDmXOXqxY+nFWvfUdOW20O3f7N36dSgRmPUd\nEzzj+qaEsr2KrMaHT87ffWr34qQCkbFZK+fBXweMJIQVsHmdQVR07PqwfCXLxqHL/A0B7fWq\nMdlW05EBAACAdyia1vIIg6rR6iJJITE0qMMnTQHUM4lEYhCNqUGAxifog/5g1R3NOXZCoRDn\n2BGcY1eK5hw7iqJMTU3rbaMfeplGxvkRpuaV3l0MAAAAAOqNrodiaVVB5FfT9ly4kV1c5s40\nz9P/oYRt66AwAAAAAKgeXWfsbq/sPycyOd+4ReumysePHzs5d3RxduJkP6VMBmw/caZOSwQA\nAAAAXeg6Y7dk2z3T9qsfXAmlVQX2+uJPI/eG2hoUv7jYvsXnBVY4pQAAAACg4ek6Y5eSL28+\nbjghhGLrT7TQ+/FWNiFEaNFv76Tmqz1j6rBAAAAAANCNrsFOzKEUkjePwOthI8o8kal5bTfS\nJu+vzXVSGgAAAABUh67Bbqq1wV+7/vNEpiKE2LpZZ/wQrVn+/EJWXZUGAAAAANWha7CbHj+t\n+OXRlmbNHklVLX2mFr1I6OW3aP3KecM3/m7SLrhOSwQAAAAAXeh68UTTfutuH2m6Yuf3LIqI\nmk5P+uqw15YN12jasOXQw2em12mJAAAAAKCLmj95Iv/Jg0eFgraOzbhU1SsDfETw5AmARgpP\nnvgY4MkTJRrkyRPaZuzu37+vvbGAKn744D4hxNHRUfuaAAAAAFDXtAU7JycnHXv5wAfOAgAA\nAMCH0xbswsPDtXyqVmQnbN7xqEjBYuvXclEAAAAAUH3agl1YWFhlHz34v+gpUzc8KlI0+9Q7\nNi6yDgoDAAAAgOrR9XYnJeR595Z6feI4dPr1HMvQmPOPUhIGtzaqi8oAAAAAoFp0vd0JIYQQ\n9YXYZf5z1z8qVn7itTR2+7I2hry6qgsAAAAAqknXYPf6/v8FTp26779PDJr33RkTN+2zVnVa\nFgAAAABUV9WHYmllbvwyb5t2rolXcyeExj7+82ekOgAAAIBGqIoZu78vxE6ZOv/iY4ltb+8j\ncduGOBrXT1kAAAAAUF3agt3yiX1W77/M4pj6r41ZNe0zNlFlZ2dXuGZ93lIZAAAAACqk7ZFi\nFKXrw8Jwg2JgEjxSDKCRwiPFPgZ4pFiJRvdIscDAwHqrAwAAAAA+kLZgt23btnqrAwAAAAA+\nULVvUAwAAAAAjROCHQAAAABDINgBAAAAMASCHQAAAABDVOtZsQD/Fq98X3K5XCMjo4YupOHJ\nZLKioiKxWNzQhTQ8pVKZl5dHCBGLxWw2u6HLaXjZ2dmGhoZcLrehCwGAdzBjBwAAAMAQ1Zux\ny8l4+LJQ8f5yR0fHWqoHAAAAAGpI12AnfXV+1Kdjf7ifU+GnePIEAAAAQIPTNdhFu088/adk\n+MzFw5ybc3R90hgAAAAA1B9dg93qX17ajz36/Xa3Oq0GAAAAAGpMp2BHqyQvFaoOY53ruhqA\nRsJsj3lDl9BY8AnhN3QNjQSHELOGrqFRqb+nmhNCgnDCD4BOdLoqlmLr9zcWPNx9o66rAQAA\nAIAa0/F2J1TyyVXy096TVu3JKlTWbUUAAAAAUCOUjhe09unTpzDjzu3HBRTFNmnSRMgucwHF\nkydP6qY8gAYgkUgMog0bugoAKKVxH4rNy8tTKpVCoVAkEjV0LQ2vqKhIpVIZGBg0dCENTyqV\nFhQUUBRlalp/Zy7oevGEmZmZmdlndh3rtBgAAAAAqDldg92xY8fqtA4AAAAA+EDVe/JEUead\nwyfO/fHwaZGK09S+3RAPzy62+nVUGQAAAABUSzWC3ZHl47zWHJSp353oEPrVjNGh+w+sHFUH\nhQEAAABA9eh4VSx5dMjLc9UBi36TD5y7nvkiO/fl019+PDylv+XBVZ4Tjz6uywoBAAAAQCe6\nXhU7y9pgL+WZlR6vx3p3PSytLppq1+Sg2leSua3OKgSob7gqFqDRwVWxHw9cFVuiQa6K1XXG\nLvllUWv/uaVTHSGEYunNDXQsfplUB4UBAAAAQPXoGuz0WSxplvT95dIsKcXG9RMAAAAADU/X\nYPeVg9FfewNu5MpKL5S/vhUY+8Co1dw6KAwAAAAAqkfXq2L9Dq8Maze7d3OXyYF+vZ1bCUjx\n33ev7I6Mf1DE++aQX52WCAAAAAC60DXYGTsG/HGO4x2wZMfXi3e8XWji2DcqKmGGk3EdFQcA\nAAAAuqvGfexsBvj/nDotI+3mvb+fygjfyr5t5za2uh7KBQAAAIA6Vr0nTxBC2Th1tXGqk1IA\nAAAA4ENgxg0AAACAIbTN2HXq1Ili8W/dvKZ5rWXN27dv13JdAAAAAFBN2oKdvr4+xeJrXhsb\n4woJAAAAgEZNW7BLSUkpef3TTz/VfTEAAAAAUHO6nmPXq1evDRkF7y9/fmVOn4ETa7UkAAAA\nAKiJKq6KzX/01zO5ihBy7do1+9TU+4XlnoxO/37q0pWUx3VVHQAAAADorIpgd2RYj8kPcjSv\nE4d0T6xoHcPms2q7KgAAAACotiqC3ScrN+3IkxJCZsyY0W/V5vHmwnIrsLgGvUZ51lV1AAAA\nAKCzKoKd41hfR0IIIcnJyR6Tp0630i+3Aq0ukhQqCeHVTXkAAAAAoCtdnzxR2VWxGedH2Lul\nKaT/1F5JAAAAAFATugY7WlUQ+dW0PRduZBcrSy9/nv4PJWxbB4UBAAAAQPXoeruT2yv7z4lM\nzjdu0bqp8vHjx07OHV2cnTjZTymTAdtPnCGELBvv6ebmtjez/C1R7qz3d3Nzmx37QPPWzc0t\nPqtIy4Z8R3pszJS8v7zKhrWFVuVPGuXh5ub282tZLXYrl9z7ZtlXEzzH+M8Nu/i4gh0khNzf\nMcvdY/RrFV2y5Owcb3d3j7+kqpIlt1ZMGeE5TUlX1F6ruhjYgmcZz3LlNWv7vrvnk5fNnznW\nc4TnWK+ABeEHLqTW0YYAAACYStdgt2TbPdP2qx9c+b8zKanNBZxPI/ceP3H6t7/+r2nRtQIr\nkWYdik2l7H1Qphmt3PXLKzZFlSxwdXV1Euo6TVhajRtWV+4f0blKyozLPnK4No8v71v8dar5\n0K2x3/p2l21bElFhMLP6wplWy068Kta8pWlpUmYBTauTU3NL1jn3V77IajSHqqh9jXzIwKaE\nL1qd/LBWyvjnu1VLtx0y7zJ8yYqI1UuDhncyOx65eOWJh7W+IQAAAAbTNdil5MubjxtOCKHY\n+hMt9H68lU0IEVr02zup+WrPGM06lgOcX92KldPvQkvh06R0tVk/I37JkpkzZ35iWJMrLWrc\nsDSVuuqZritxv+pZes5wNnl2fk/158UqdfFZobNnX3Nj067Dh8kLfstXVdC3ftMxfBZ1J+WF\n5m3xiyO5So5PS6M/D7yZu1LJM6/my23c2tVeXRUMrC6jVDNaet514FergcvneH3h0q61U4fO\nn3sFfu3T6nbCf+qoEgAAAEbSNdiJOZRCotC87mEjyjyRqXltN9Im76/NmteGdj5NyLOE9HdH\nYx/sSzHpMFVYaiOe7u6aA38qafruDeEzJo3zHDdx6fr4f0odbVQrc/esXTRu9IgJvtO+Sbpa\nrqGmbVzE8qlenl6TZ++/9GjZeM+dzwsJIfLXad9+HeIzbozHSM+pgYsPXc7QrO870uPQk99X\nBkwcOcLDa5L/tgNXK9tNlSx99+N8h4mDnHy6yQvvHn67xf8L8vGadbxktaKsw25ubpdey2ll\nzuEd/5kz3W/UGK/ZIREX0nIr6Zh4dzD5JeYCTctORycatfI0Ylcw50ZxxF+aCLMu/K55m/nD\nNaG5R/+JDvl/J2pyYFHWCTVND+pqpmVnX9w6vXL+rAmjR3pNmrZ6++GiUllK+8BqGaUKB3zn\npDHfPit4cnrRaO8IQohKlrlnU9ikCWNGjB43d0lEyqN3h311Gf8iFS3LzSq9pJnrrNDF/jQh\n5TYEAAAAldH1GNxUa4P1u/7zZMUBWz7b1s06Y3M0Ib0JIc8vlPpjzOJP7Wy2ffcfU8J6EEII\nrYi/+bLn+jbqsPe6o5Xb5i76Rdg1cG6YmJ33/Y5vlgSR/VGTNR/eXLXMdeysDX7WT64fXBu3\ntungA6PNSt8/j45dEHKJ02XuojUCWWbitkV/FilsCCGE7Fm04opBn7nL/Ex4qnsXd8WuD+rb\nLcmSxyKEnFwSMXDibD9n64zrB9fGrTUfkDzOQu/93XxxNUZBc6d0Nzfg+phxz57be3/0wk6E\nkG5TO0WF7H8q/9KKxyaE/LnvnNDsy75GvL0LvzpT3M5/2nxbQyrt6qlvFk9Xbd89xKqCngcu\nXpLkvXBGQKLIbtjGCO/KxvmT/pbHvjuuooezKfLjxSyrL3qL23RXyxd+nyP1MBU8P5/K5lsP\nMuZXtrOmytTZK3e0Gx0QFuAge5m2eUP0CpvuEW7NdBvYykap4gGfEp3QJHDSmQ4hW/zbEELv\nmLfwkrzljLmh1iLF1RNxmxbMNUmIbqfH0drzO1PcOyxMipwcdKV/r24uzs5tHGx5AvuuXe1J\n+Q1VTKlUymS1dk6kUqmseiUAqEeFhYUNXYI2arWaEKJQKBp5nfVDoVDQNI2hIKX+mtTuaLBY\nLKGw/H2FS+ga7KbHT1s5YENLs2b3X6a39JlaFDKzl5/lyBaKjRt/N2m3oWQ1R58+OXNji9Xd\nhSyq4GlihrrJhmb6u9/rTZKx66fnyq+TvtL84W++On/Vxku5SlrMoQghYpf5voNdCCE27vOs\n911KzZGRUvmj6OWhH54Uhu2f3VmfS4ijXfjjifPezKVZDB09e9DwrkY8QohNkzEx3618KFNa\n8niEEFHPBb5DXAghtu7zWuxPSXspJRUFu9MJf+rbetvx2YTo+Tkab/pfrIyO5FOUceupJuyL\n8XdzlnYxJ7Qi7vrLNrO/lGafOPLg9ZrE+e1FXEJIy9btVddbMli4AAAgAElEQVS9kr+9N2RV\nt3LdqqRPoteul1l1VmXedPQYYMFlSf76LZNj79S8/H0BrYZ0UR0+/NNr2QDhizO5Mt+BTdlC\nwSBj/s//99RjvP3tKy/1bf1Zle+sQfGtYjU97PP+jmI+aWW/KkT8lG9Q0rn2ga1slCobcA6P\nz6MoFofH53OLshLPZhR8tSt0gKmAEOLQtt29Cd4xR//Z4t1SS8+lN+04Pnxb25Qf/3v99vmD\nh/fuZAuM2nf71NPX18VCUHpD7/+TaSiVyuLi4so+BYCP3UfxBVcqlfhvYYmP4p+sftA0Xbuj\nwWazayHYNe237vaRpit2fs+iiKjp9KSvDntt2XCNpg1bDj18ZnrJavpWE+xYx3c/zp9pb/Rg\n739NO07nUxUcc8y+nsrV71QynSMwGbpmzdCST62H2ZW8NmSXP1ice/cWW9Cys/6bv/EGtl8Q\n8ibYuXm43r1+5Wh6ZlbW80epv5Ru1WRw2T4rOtdLLrlx4lWx45Rm6enphBDjz2xVv9/Z/Ugy\n3d6QYhtMa2eyfc//SJcvJBn70xXCpT0tCv64RdP0kvGjSnciUmYSUi7Y0dHzgm80dYvdOlby\nS7z/2gUtW8Qa7dyQYBAUF+5Srgah+Uh99pGffs/tYppEuE2/NBEQQoZ9arHs3M9knM332VJb\n7zZadlZo6t7f4fzXU6a279KpbZs2Hbv07G4n1nFgKxslLQNe4nXqXTbfZqCpQPOWYgk9mupF\nXUknb4OdLuNv59LHz6UPIaQ4J/POjesnDx0ID7izZX+kHZ9dwdplURTF4dTatTUqlarqlQCg\nHtXiF7wuqFQqmqZZLBaLpesJTgymVqtpmmazq/7VzXhqtVqtVlMUVbujof3HrBpfFZcR846O\nmKd5PXbTOdd5Dx4VCto6NuOWTm4Ux6+H+db4uzNXdY+79ar3JscKu1IraIpV6ZUQQj1t+0/L\n1YSU2iTFftvnq9UBgQ9EbYf27tium9Ngt37z56wsWYsrrHpMM37YT9N0Wmx4YKmF1+J+nb6m\nDyGkw5Rekq8SXihcH+/6r0n7GRZcVp6IR7FFB5J2le6EYpWfVZJLrp3OLFi+bqSQRQl7TFnm\ncX91aIieMr9juM37NVBs/ZHmeidPPvpbcN+whY/mTDybL3tKTx79K8v0tVI9taOplp2l2Ibz\nN+4enXrzzt0//vjtp6N7d7YfER7u21HTufaBrWyUKhvwMuvQpMw6hLBYFKHV2nsuIc+/vCHy\nos+CYBsemxAiNLHuNWRk108dR40L2f+PZElrY+1lE0L4fD6fz69yNR1JJBXfjwYAGoqxcdW/\nBxpQXl6eUqnk8/kikaiha2l4RUVFKpXKwMCg6lWZTiqVFhQUkPr9Adb1/xa9evXakFHmHnWG\ntq1dnJplX53TZ+DE0ssdvAbmpMY9S9/3lFh52VT872rarblccqPk9myyvJ98fX1vFSh0qcS4\nQ1uV9O9fC9+sXJhxSvOiICPu5gt55MZlE0e79e3VxVZc/o56VUr87omB3aTvSgnuZJabGp2r\npAkhBs18bbmyuN8zY37LHjC9EyFEz3IoURedyVEJ3uAnrgmL+ul5+X7VSkLIs7c3du7ss8KR\nnVXEtgjsYFJhGV2HNJU8/u5gWl6LsW/u/Cy09DThqKOOnuYImvc14mnZ2bzU4zHxR2zbdP1y\njE9w+LrN01v/dmp3dcehnMoGvMw6bdupZE9+zpVq3tJq6YnMQtMedu+vWSE2r+kv168fuJVd\neqFKmkcIaaJf6eFXAAAAKKeKGbv8R389k6sIIdeuXbNPTb1faFj2c/r3U5eupDwuvUjP0tOB\ne3DlhnPmnRfyKrndmqH99O7Gl1csjZzj62rCkXz/baxc8Eln3f6E61v7DGt2bkPYt1/5fS6U\nZibvvE0IYRHCNXCg6cvHLt39ooNlTvq9w/EJhJD0Z3k9DCx06Vb66vv/SeQDlwwovdDFf5B6\n5oHoeznBLqaE4k3tZr568yrCbedlo08I4Rl0ndrRdE/waoG/p5O1/p1z8d+nZocFl98cz6j3\nJybb9i1ZbzjT04LkXjq++y+2fWvycMN3fy7zaP1+JZb9P1Hs3ZtGyNq2b46iUpRgQjODbWee\nip0Waka0sp1tb1T8/fGkApH4826tqMJnJ3/IFNl46LL7WlQ24IQQFkWKs57m5lqJLScMtj61\nIziCPd3TWqS8fCw6TWG0aozOwU5gH/Kl45qIuXzPcd3btBDxqbxnD39I2GfQwtWnqajMhsSG\nVfYGAADwr1VFsDsyrMfkBzma14lDuidWtI5h81ll3lPsSb0tQs5ljl5c8XFYQgjFEizatjo+\nMiFmw/LXar1WLkO+DvDSuWbW9I2bRZu3frNqMRG3nBK68M7smUYcltBsZPikFzEJ604VsZs7\nuEwIiRJvCkwODuySlKRLp3/u+4EtaDa9TZnJUn3rCS76x+7GXSHffEkIae0zWD4twX784pJ5\nzuHLN8uiIw/tiMhVcG3sneevDe1YQTxlzd+ycldkfPzGsGJK5Ni577qdPsaPEvyWhhxxihvl\nVH56VmD6pZizr0jUq+QcREKI85gWZO2dZiPeBEEtOxs+OX/3qd2LkwpExmatnAd/HTBS13Gt\nVMUDTghp595DFr9t5oK+yXHzAjavM4iKjl0flq9k2Th0mb8hoL1eNSbbuk+NCGuWdOzsmc0n\nXhQrKbGFTcf+3vO8v9Tcirn0hj54dwAAABiLomltd6O9f2DPz3lSQsiMGTP6rdo83rz8VRgs\nrkGvUZ7tjT701sG6U8kzzpz7tefQz005FCFEmnNmrN+3mw4cbSnAeZp14l844BKJxCAaU4MA\njUlQXd04vVZozrETCoU4x47gHLtSNOfYURRlampabxutYsbOcayvZtotOTnZY/LU6Vblb89R\n/1hsowt741Ky9Ra4d+fIsg5uTjJsMZbBIaPBYcABAAA+FlXM2DVOhU8uR21P/vXvTAXLwLFL\n36mzJ9khZ9Slf9uAY8YOoNHBjN3HAzN2JRpkxk6HYEcrH9y9a9rWxZTz5tSyG0e+2XP6usrE\nacBnI0YPaV/nNQLULwQ7gEYHwe7jgWBXokGCXRW3O3l+eU+fFiaOLp3Pvr2TxZmQPt0850bG\nJX67fvmYoR16TPm2UX/bAAAAAP41tAW74henOw+cci3LZNKs4E4iHiFElnt2eMRloenA7288\nePRrykqvDv+LD5h+IbO+qgUAAACASmm7eOLSrMAXxOzk/d+HNXtzzUTajlAVTU/+PnF4F0tC\nHJbt/d+p742Pzj0a/fvseqkWAAAAACqlbcZu04WnTXptL0l1hJDj0X9xBC0iery9By9LEOZs\nKvknvk5LBAAAAABdaAt2NwrkTQa3LHmrVrzY+EQidlomYr17oIRRG0Nl8YM6LBAAAAAAdKMt\n2PEoqiijqORt3l9rJCp1m/mfll6n+Gkxm2ddV9UBAAAAgM60BbvR5noZJ3eVvL22/CQhZNrQ\n0jGOjv7fS6H5hz+0CgAAAAA+lLZgN3NJN0lGzJAF8anpz2+fjRx//LHQ9EsvC72SFS5sHn3w\nZVG3xb51XycAAAAAVEHbVbFO008EJLTavnFK241vlsza+Y3m9Lqbq+YtP330h6vp4rYTjvo7\n1XmZAAAAAFAVbcGOYutHXv57cMw3J1LuKIUWA8YETh7cXPPRn4kJ//cP8QhYs2ljsCGb0tIJ\nAAAAANSPGj4rVpadQ5mY8JDogInwSDGARgePFPt44JFiJRrkkWLaZuy04Jua1G4dAAAAAPCB\nqnhWLAAAAAB8LBDsAAAAABgCwQ4AAACAIRDsAAAAABgCwQ4AAACAIRDsAAAAABgCwQ4AAACA\nIRDsAAAAABgCwQ4AAACAIRDsAAAAABgCwQ4AAACAIRDsAAAAABiC09AFADRGr3xfcrlcIyOj\nhi6k4clksqKiIrFY3NCFNDylUpmXl0cIEYvFbDa7octpeNnZ2YaGhlwut6ELAYB3MGMHAAAA\nwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBC4KhagAmZ7zBu6hMaCTwi/oWtoJDiE\nmDV0DbUviG7oCgCgNmHGDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwA\nAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAA\nAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAA\nGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAhEOwAAAAAGALBDgAAAIAh\nOA1dwEeAVknOH0w4m3IjPSuX5urbOXZy85rct7Wx5tMJI9x7Ru2fY6Xv5ubmEZM82VJPS1cF\nzzIkAoumYl6tFHb3fPLBHy4+SH+uYutZ2Dr0cx07dlCbKjckl9zbsS7mWupTfes2XvMW9Gtu\nUFn/OyeN+V/z0LhwF12KURTdHTUudE3ykQ563PrcHQAAACiBGbsq0OqiqIUBO0896DTMa/Gy\nZXP8vZqR+xuDZ5zOKCy3pqurq5OwiqCcEr5odfLDWinsn+9WLd12yLzL8CUrIlYvDRreyex4\n5OKVJx5WuaF9i79ONR+6NfZb3+6ybUsi6Fqp5oPVeHcAAACgBGbsqnB/b+iFDON1u9Y7iN5M\nRPUZ8Jlwuve+tSddo8aWXnPmzJnl2qrUNJtF1XjT2pvvOvCr1cDlc7zeTKc5dejcRu/R/IT/\nEPdo7d1efFbYM7SvubHIcPgw+YFN+SraiF3zImtLjXcHAAAASiDYaUUrNp183NJ3a0mqI4QQ\nijNmgb/p7+Vn7Dzd3T+PTppsqec70mP41tWpayNuZubriy17uvrNHtuLELJz0phTOVLybNHo\ny70P7QtWyTL3RUX/dCP1tYLVzKGT57SAPi0MCCGVNS+nSEXLcrNKL2nmOivUNocmJLrshso1\n9O5gkhRzYcbyoaejE41aedYg1clfp8VF7bn629/5crWZVauh4wNH97Yps0J+atisZUVd/TbN\n+YJNEVqZcyQ2+tLt+5m5cquWzh6+/oOcxLW1OwAAAFACwU4b2euLz+Wqzz+xKLfcqPXAka21\nNTy5JGLgxNl+ztYZ1w+ujVtrPiB5nIXelOiEJoGTznQI2eLfhhB6x7yFl+QtZ8wNtRYprp6I\n27RgrklCdDs9TmXNy21iinuHhUmRk4Ou9O/VzcXZuY2DLU9g37WrPSGk7IbKG7h4SZL3whkB\niSK7YRsjvGswLHsWrbhi0GfuMj8TnurexV2x64P6dksyefupXJIWPmt5SaojhCSEfHWmuJ3/\ntPm2hlTa1VPfLJ6u2r57iFWZParx7mgoFAqZTFaDfamQUqmsra4AGrmCgoIat6Vpuri4uBa/\neh8vtVpNCFEoFB8ynoyhVCppmsZQEEJUKpXmRe2OBovF0tOr9IR+BDttVLIMQogNr9pnIop6\nLvAd4kIIsXWf12J/StpLKbHQ4/D4PIpicXh8PrcoK/FsRsFXu0IHmAoIIQ5t292b4B1z9J8t\n3i0ra15uE47jw7e1Tfnxv9dvnz94eO9OtsCofbdPPX19XSwEpTdUfo+kT6LXrpdZdVZl3nT0\nGGDBZUn++i2TY+/UXF/3vbMYOnr2oOFdjXiEEJsmY2K+W/lQpjRhE0KIPD9txaKVL9pO3Pk2\n1UmzTxx58HpN4vz2Ii4hpGXr9qrrXsnf3huyqtuH7867/VKppFKp7rsAABof+MWRy+W1VQkD\nKJVK/LewREmmAZqma/cvFJvNRrCrIRbPkhCSKVd3LbucVuU/ycwzsrat7Dhmk8F2Ja8N2Szy\n3hUKr1Pvsvk2A00FmrcUS+jRVC/qSjrxbqlLcw07lz5+Ln0IIcU5mXduXD956EB4wJ0t+yPt\n+OxKdoiOnhd8o6lb7Naxkl/i/dcuaNki1mjnhgSDIB0vfdVw83C9e/3K0fTMrKznj1J/Kf3R\nznnhagGr4NHjkpILMm7RNL1k/KjSq4mUmYSUCXY12p13WCwWl1vDq3Hfh1/N8O/xIV8chULB\n4XAoquFP0m1wmjkqFovFZlf9+4rxNJEOQ0EIUavVKpWKoigOpzbjFoulbb4JwU4bvlF/MWdn\nSkqWu4dd6eW5aVGBIVdXJB7ppF/x70SusIofaJomhJT5bchiUYRW69hcnn95Q+RFnwXBNjw2\nIURoYt1ryMiunzqOGhey/x/Jkre3YinfSnLtdGbB8nUjhSxK2GPKMo/7q0ND9JT5HcNtKly/\nQmrFq9UBgQ9EbYf27tium9Ngt37z56ws+dTy8wXL3Ng+k9Z8fWbEcldbQghHxKPYogNJu0p3\nQrHKjFvNdqc0Ho/H49XazVAkEkltdQXQyBkZGdW4bXZ2tkgkqsX/U3288vLylEoln88XiUQN\nXUvDKyoqUqlUBgaV3kvr30MqlWoOwn7IF626cLsTbSiWcP5n1n/vX5cmKXW4gVYdjborEA+o\nLNXpwrhtO5Xsyc+5b+ZmabX0RGahaQ877a1KsHlNf7l+/cCt7NILVdI8QkgTLVWplYSQZ8Vv\npqM6+6xwZGcVsS0CO5hU2uQ9BRlxN1/IIzcumzjarW+vLrbiMucNjBnVlWfUPXx061uxy+8X\nKwkhepZDibroTI5K8AY/cU1Y1E/Pa2F3AAAAoCzM2FXB2X9173uzQqcHeYxx79CyiULy/Orp\nAxeeKietn1yD3lgUKc56mptrJbacMNj61I7gCPZ0T2uR8vKx6DSF0aoxOgc7gX3Il45rIuby\nPcd1b9NCxKfynj38IWGfQQtXn6aiMhsSG5a04hn1/sRk274l6w1nelqQ3EvHd//Ftm9NHm74\n7s9lHhVfDKIoSE9NLTMTZmXmQNOXj126+0UHy5z0e4fjEwgh6c/yOpea9XMct6Lzad+ItWfi\nVw7nGXSd2tF0T/Bqgb+nk7X+nXPx36dmhwWXuR6lZrsDAAAA5SDYVYHiiIO2Rp7ct/fcqb0n\nXuWzBIbNHTsFrfPr61CTadV27j1k8dtmLuibHDcvYPM6g6jo2PVh+UqWjUOX+RsC2lfnmQ3d\np0aENUs6dvbM5hMvipWU2MKmY3/ved5fcqjyGyrViDV/y8pdkfHxG8OKKZFj577rdvoYP0rw\nWxpyxClulFMFRzzzHsQEl73ByPbDx8InvYhJWHeqiN3cwWVCSJR4U2BycKBLbEjJOhRLb26Y\np09QzN4/evu0FQ9fvlkWHXloR0Sugmtj7zx/bWjH9+bharQ7AAAAUAZF043k0QMAjYVEIjGI\nxtQg/DsE1fxPQHZ2tqGhIc6xI2/PsRMKhTjHjuAcu1I059hRFGVqalpvG8U5dgAAAAAMgWAH\nAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAA\nAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAA\nwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAM\ngWAHAAAAwBAIdgAAAAAMgWAHAAAAwBAIdgAAAAAMwWnoAgAao1e+L7lcrpGRUUMX0vBkMllR\nUZFYLG7oQhqeUqnMy8sjhIjFYjab3dDlAABUADN2AAAAAAyBYAcAAADAEAh2AAAAAAyBYAcA\nAADAEAh2AAAAAAyBq2IBKmC2x7yhS2gs+ITwG7qGRoJDiFlD16CTILqhKwCABoMZOwAAAACG\nQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgE\nOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLAD\nAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAA\nAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACG4DR0AbXv5kLfFfdzyy0Umo08ED/p\nA3tWFN0dNS50TfKRDnrcch9NGOHeM2r/HCt9Nzc3j5jkyZZ6und793zywR8uPkh/rmLrWdg6\n9HMdO3ZQG81HBc8yJAKLpmJehQ3lkns71sVcS32qb93Ga96Cfs0NKlxt2XjPXwvlnt8m+ljr\nl15+Z73/8pTndm4btk1trXu1dafG4wAAAAAaDAx2hBCB8cDliz4rvYTNNa+fTbu6ujoJqzGq\n/3y3amncnUFjJntOceCrCx7+diUhcvH9gs3L3e0JISnhi052XB4106nCtvsWf53q6L01qPuD\nU+s3L4nom7iaqmQrFJtK2fvAJ6Tzu0W0ctcvr9hUZS3q24eMAwAAAGgwM9ixuObt27fXsoJK\nVsjmi3TpSqWm2axqpJ+ZM2dWq4ddB361Grh8jpeL5q1Th85t9B7NT/gPcY+uclsXnxX2DO1r\nbiwyHD5MfmBTvoo2Yle8IcsBzi9TYuV0FO9tkit8mpSuNutnlPe3TrulbUd0H0wtPmQcAAAA\nQIOZwa4yE0a4T4iOexG/+affhQkJS+Wv0+Ki9lz97e98udrMqtXQ8YGje9to1vQd6TF86+rU\ntRE3M/P1xZY9Xf1mj+1Vuit5fmrYrGVFXf02zfmidJrydHf/PDppsqVelT1oFKloWW5W6SXN\nXGeF2ubQhERPGnMqR0qeLRp9ufehfcHvt/XuYJIUc2HG8qGnoxONWnlWluoIIYZ2PuyURQnp\nBVPs3hyufbAvxaTDVOGjDZq3Klnmvqjon26kvlawmjl08pwW0KeFgfahKDeYWnqglTlHYqMv\n3b6fmSu3auns4es/yElci+MAAAAAGswMdmrFy9TU1NJLWju10cSey9tWuPT1XevbkhCyZ9GK\nKwZ95i7zM+Gp7l3cFbs+qG+3JEvemwtKTi6JGDhxtp+zdcb1g2vj1poPSB719hQ1uSQtfNby\n91NdOe/3MM6i/Ll3U9w7LEyKnBx0pX+vbi7Ozm0cbHkC+65d7QkhU6ITmgROOtMhZIt/mwr7\nH7h4SZL3whkBiSK7YRsjvLWNCIs/tbPZ9t1/TAnrQQghtCL+5sue69uowzQf0zvmLbwkbzlj\nbqi1SHH1RNymBXNNEqLb6XG070ipwdTWQ0LIV2eK2/lPm29rSKVdPfXN4umq7buHWJUZig8Z\nB0KIXC4vLi7WNgLVoVQqa6srgPr3+vXr+tkQTdOFhYVUozmjowGpVCpCiEwmw28P8nY06u3n\nsDFTq9WaF7U7GiwWy8Cg4rPqCVODnTTvx+DgH0sv2XPshJhNEUJeW04b95mzZqHF0NGzBw3v\nasQjhNg0GRPz3cqHMqUl780Z+qKeC3yHuBBCbN3ntdifkvZSSvQJIUSen7Zi0coXbSfu1Jrq\nKu7hvWDnOD58W9uUH/97/fb5g4f37mQLjNp3+9TT19fFQsDh8XkUxeLw+Pzy12oQQlTSJ9Fr\n18usOqsybzp6DLDgsiR//ZbJsXdqrv/+yoQQR58+OXNji9XdhSyq4GlihrrJhmb6uwkhhBRl\nJZ3NKPhqV+gAUwEhxKFtu3sTvGOO/rPFu6X2HSkZzKKsxMp6kGafOPLg9ZrE+e1FXEJIy9bt\nVde9kr+9N2RVt1oZBw21Wq1QKLT9YwD8a9TndwE5pjS1Wl3yhxwwFCVomq7dbyWbzdbyKTOD\nnZ752OQ4rwo/ajrItuS1m4fr3etXjqZnZmU9f5T6S7k1mwy2K3ltyGYR+s3rnfPC1QJWwaPH\nNKlCZT2UY+fSx8+lDyGkOCfzzo3rJw8dCA+4s2V/pB1fy78cHT0v+EZTt9itYyW/xPuvXdCy\nRazRzg0JBkFx4S4VNtC3mmDHOr77cf5Me6MHe/9r2nE6/+3/s1+n3mXzbQaaCjRvKZbQo6le\n1JV08jbYVbYjJYOppYeCjFs0TS8ZP6p0MSJlJiFlgl1Nx+ENNpvN5/OrXE1HyIjwUavF74J2\ncrmcw+GwWLhtFlEoFGq1ms1mczjM/KtaLSqViqZpDAUhRKVSKZVKiqJ4vNq8q4P2afJ/3bjr\nGbzZZbXi1eqAwAeitkN7d2zXzWmwW7/5c1aWXpMrrDhPWH6+YJkb22fSmq/PjFjualvhOtp7\nKCHPv7wh8qLPgmAbHpsQIjSx7jVkZNdPHUeNC9n/j2RJa+NKG0qunc4sWL5upJBFCXtMWeZx\nf3VoiJ4yv2O4TaUbozh+Pcy3xt+duap73K1XvTc5lnxC04SQMj8lLBZF6Hf/2apsR0oGU0sP\nHBGPYosOJO0qUwurzNxbjcfhXYVcLpdb6XxedUkkktrqCqD+aTlGU7uys7P19PRq8av38crL\ny1Or1TweTyT60CvJGKCoqEilUtXbz2FjJpVKCwoKSD1+K8m/+QbFBRlxN1/IIzcumzjarW+v\nLrbiAh0bjhnVlWfUPXx061uxy+8Xf9BhCDav6S/Xrx+4lV16oUqaRwhpoq/1d6VaSQh59nbr\nnX1WOLKzitgWgR1MtDRy8BqYkxr3LH3fU2LlZfPuh8y4bTuV7MnPuVLNW1otPZFZaNrDrpJu\nKqClBz3LoURddCZHJXiDn7gmLOqn56Wb13wcAAAAoJR/b7DjGjjQtPLYpbsvXmWl3fpxfege\nQkj6szwdTwpwHLeis15BxNozH1IDW2Af8qXjpYi5kftP/O/Wb/fu3b18/sSqeVsMWrj6NBUR\nQlgUKc56mpubX64hz6j3JyaCfUvWX7x5L/Xmf6PDZv/Ftm/Nyd7w3Z9aNqdn6enAzV+54Zx5\n5yk8qvTyCYOtRTuCI1Ju3nuY9uu+iKA0hZH/mGoEOy098Ay6Tu1oui949ZmUm48f3j++c/H3\nqdkDe1vUyjgAAABAaf+6Q7ElhGYjwye9iElYd6qI3Twf0rgAACAASURBVNzBZUJIlHhTYHJw\nYJekpFaCqk/qolh6c8M8fYJi9v7R26dt+Zt36K771IiwZknHzp7ZfOJFsZISW9h07O89z/tL\nDkUIIe3ce8jit81c0Dc5bl7Zdqz5W1buioyP3xhWTIkcO/ddt9PH+FGC39KQI05xo5wqOXZJ\nsSf1tgg5lzl6sWO53gI2rzOIio5dH5avZNk4dJm/IaD9e0/X0EpbD8OXb5ZFRx7aEZGr4NrY\nO89fG9rxvXm4mo4DAAAAvEPRdJXXAAD8u0gkEoNow4auAqCmgurpt3p2drahoSHOsSOE5OXl\nKZVKoVCIc+wIzrErRXOOHUVRpqam9bbRf++hWAAAAACGQbADAAAAYAgEOwAAAACGQLADAAAA\nYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACG\nQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgE\nOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLADAAAAYAgEOwAAAACGQLAD\nAAAAYAgEOwAAAACG4DR0AQCN0Svfl1wu18jIqKELaXgymayoqEgsFjd0IQ1PqVTm5eURQsRi\nMZvNbuhyAAAqgBk7AAAAAIZAsAMAAABgCAQ7AAAAAIZAsAMAAABgCAQ7AAAAAIbAVbEAFTDb\nY97QJTQWfEL4DV1DI8EhxKyha6hCEN3QFQBAA8OMHQAAAABDINgBAAAAMASCHQAAAABDINgB\nAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAA\nAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAA\nMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABDINgBAAAAMASCHQAAAABD\nINgBAAAAMASCHQAAAABDcBq6gI/ML19NXPXwteY1RbH1jS2de37mM3lEUz5be8MJI9x7Ru2f\nY6X/4TXQKsn5gwlnU26kZ+XSXH07x05uXpP7tjauWW8FzzIkAoumYl6N67kV6hd+N7vkLU9g\nYNemq9fMGZ2bCEmt7jgAAABoh2BXbQLxkOUL+xNCaJX8ZXrad8nJ826lffttqJhD1cPWaXVR\n1MKAn1+YjhjjNaGZuDDnxe2LxzYGzyjcFudqI6pBhynhi052XB410+lDquIb9QkLdiWEEKLO\ne/Hw5K79a756unv/OgN2fYwJAAAAaCDYVRuLa9m+ffs3b1w6f9rPZYbf0lUH/t7k1aoetn5/\nb+iFDON1u9Y7iLiaJX0GfCac7r1v7UnXqLG69KBS02xWzfOWSlbI5pdPkCyu+bsxIc4urV57\nBR459LJ4chO9Gm8IAAAAqgvB7kPxDNvN7WWx6ock4rWMECJ/nRYXtefqb3/ny9VmVq2Gjg8c\n3dumXBNamXMkNvrS7fuZuXKrls4evv6DnMQPYmYv/W/bg3tmatZ5/fe3PkE/bz+YaM0rdZCX\nVmw6+bil79aSVEcIIRRnzAJ/098LtXROCPEd6TF86+rUtRE3M/P1xZY9Xf1mj+21c9KYUzlS\n8mzR6Mu9D+0LrqwtIWTCCPcJ0XEv4jf/9LswIWGp9jHhGlgQQnKUqtILKxsZafbxMX7xpdfU\nbzozcaerLiMJAAAApSHY1QJb16aKlBv5KtqQTe1ZtOKKQZ+5y/xMeKp7F3fFrg/q2y3Jklfm\nIpWEkK/OFLfznzbf1pBKu3rqm8XTVdt39/X8XHZyx+2CqZ30uYSQ27HXjVtNKZPqCJG9vvhc\nrvr8E4tyBRi1HjiytbbOh1jpEUJOLokYOHG2n7N1xvWDa+PWmg9InhKd0CRw0pkOIVv822hv\nSwi5vG2FS1/ftb4ttQ4Gnf/y0dEtByi2nodZmem6ykaGLx62a1cfzTrSl9eCQqK7jGyvZf0K\ntyqTyYqLi7UWVg0qlarqlQAan7y8vPrcHE3TBQUFFIUzLt780pDJZAqFoqFraXhqtZqm6Xr+\naWyc1Gq15kXtjgaLxTI0NKzsUwS7WsA1NqBp+pVCbchmWwwdPXvQ8K5GPEKITZMxMd+tfChT\nWvLeXZogzT5x5MHrNYnz24u4hJCWrdurrnslf3tvyCrXLvpxSRefd/rCVq3Mjk3L6xXRo9yG\nVLIMQohNJeFGa+fdCCGingt8h7gQQmzd57XYn5L2UsqxMOFRFIvD4/O52tsSQl5bThv3mXOF\n2y1+ddTN7WjJW7agybigNa0EZVJpZSNDsQSmpgJCiEqeueKr3eaD5gUNtdWyfoUF0DStVCor\nGxaAf4n6/xbgf0GlqdXqkj/kgN/JJWr9LxSbre16TQS7WqB8XUBRlBmXRQhx83C9e/3K0fTM\nrKznj1J/eX/lgoxbNE0vGT+q9EKRMpOQbuM/a7r0yFnyxdSc36ILOVZTWpXP4yyeJSEkU67u\nWnY5rcp/kplnZG2rqLxzQkiTwXYlCw3ZLELrWpjmddNBtpWNQKmLJwhHYGDdzNbgvfRZxcjQ\n8r2hIY/MB8fM6qfT+mWx2WyBQKB9Hd3h/9zwkarFb4EupFIpj8djsXDbLCKXy9VqNYfD4XDw\nV5UolUqaprlcbtWrMp1KpVIoFBRF8fn8WuxW+5cOP4K1IOPsM65+F0M2pVa8Wh0Q+EDUdmjv\nju26OQ126zd/zspyK3NEPIotOpC0q/RCisUlhNh6uEmPR/5e5Psg7nfLXosE713iwDfqL+bs\nTEnJcvewK708Ny0qMOTqisQjLSrvnBDCFWrN+FrbEkL0DCr9aSl78UQFqhyZlB2LTj213hg/\nRUBRuqxfDpfLrcVfIhKJpLa6AqhP+vr1el8hmUwmFArx95sQkpeXp1aruVyuSFSTuxMwTFFR\nkUqlquefxsZJKpVqZgrqczTwP60PpShI23o5y2bYBEJIQUbczRfyyI3LJo5269uri6244P31\n9SyHEnXRmRyV4A1+4pqwqJ+eE0IE4sHd9bm7z13Zn1HwhU/r99tSLOH8z6z/3r8uTSJ/t5RW\nHY26KxAP6KTP1dJ5lT6kbZW0j0z6+S0bz2XP2bjM7u3tAHUZSQAAACgHM3bVpla8SE1NJYTQ\nasWr9LTvEg9KjLusH9+SEMI1cKDpy8cu3f2ig2VO+r3D8QmEkPRneT0M3l3uwDPoOrWj6Z7g\n1QJ/Tydr/Tvn4r9PzQ4LfrPC2KHWQbu28Ax6fWkmrHDrzv6re9+bFTo9yGOMe4eWTRSS51dP\nH7jwVDlp/eQqO68QiyLFWU9zc63E4mq31Z2WkSl8eGpB5E99pq9zFsjz8uSEEIpi8ypfH/8X\nAQAAqAyCXbVJc88GB58lb548Yd6h1+h5kz01dycWmo0Mn/QiJmHdqSJ2cweXCSFR4k2BycGB\nXZKSSvcwfPlmWXTkoR0RuQqujb3z/LWhHfXfHMuwdXenD2+xGzm+sq1THHHQ1siT+/aeO7X3\nxKt8lsCwuWOnoHV+fR2Mquy8Qu3ce8jit81c0Dc5bl512+pOy8iofzwjVdMXv1148ds3K7P5\ntscORVW2frlrMgAAAKAERdN01WtBfSl+9f24KfFfJx1qp4fM3WAkEolBdKVXkgM0XkH1+vs8\nOzvb0NAQ59gRQvLy8pRKpVAoxDl25O05dgYGBg1dSMOTSqWaWwKZmprW20aRHhoNWqlQq85u\nPapvOwGpDgAAAGoAAaKxkL3+abTPNhZXPPObzxu6FgAAAPgoIdg1FnyjAds32fGs7C0wXQcA\n/9/enQfGcP5xHH9m79x34oozbiHOUq0WRVWRutURd9VRdd/EfVRLW1GEOIKgVfpDaf16ULSq\nxc9RVFuqUoJEJJFsssf8/thIVi7Uscn0/for88wzM8+M747Pzu7MAsA/QoYoNCRNqaA8HnEC\nAADwgHh2BAAAgEIQ7AAAABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACkGwAwAA\nUAiCHQAAgEIQ7AAAABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACkGwAwAAUAiC\nHQAAgEIQ7AAAABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACqFx9ACAwuhm2A2t\nVuvh4eHogTheenp6amqql5eXowfieGazOTExUQjh5eWlVqsdPRwAyANX7AAAABSCYAcAAKAQ\nBDsAAACFINgBAAAoBMEOAABAIbgrFsiD7zo/Rw+hsNALoXf0GAoJjRC+jh5DvkbLjh4BgEKB\nK3YAAAAKQbADAABQCIIdAACAQhDsAAAAFIJgBwAAoBAEOwAAAIUg2AEAACgEwQ4AAEAhCHYA\nAAAKQbADAABQCIIdAACAQhDsAAAAFIJgBwAAoBAEOwAAAIUg2AEAACgEwQ4AAEAhCHYAAAAK\nQbADAABQCIIdAACAQhDsAAAAFIJgBwAAoBAEOwAAAIUg2AEAACgEwQ4AAEAhCHYAAAAKQbAD\nAABQCIIdAACAQmgcPYD7W9Gny49lJ68Or/VQS5367+atn+//9fI1i9rZP7DiC627dm1eteBF\nXn+tfcOIjW+VcM3x96NvMeXqlWSDf3EvXe6lMpLPLF8Y+cPZv11LVu0xcswLZd3uu6GwDqEB\ng5YufLnUg4/NxpR6qmO3yXM2bwt21j7ssv/A0rAuX94y2v6WJMnJza92s9A3w9q4qyXx8Ed4\nY/9uP700d3H38k9quAAAFH1FINj9A3/+Z9aU1Sead+nXqX9FvTXlj5OHo5dOOJ+yeFr7JxUL\nCt7id+HjdoVMi3izSu4FN0yYe7Zyz/dHN/h19zuLJy1osmm29ISG6Ahe1QaM7VleCCFbLTcu\nHo9cGzk23mfF2EaOHhcAAMqkzGC3Zsv/SjSb9laPzIt8VYLrVHW+OCp6vmi/srBtcf/VOw0n\nN/HzdHF/9eWMLe8lWWQPdVGKdharrFblO2Cde7kaNWpkTtSs5XfxyPTDMUIQ7AAAeCKKcLDL\nuH1udcS670/+npRh9S0R1Kr7sM6NMz+dTLXI6bfi7DuXbj10cmCCLIRU4IK5yeaEbatWHjh+\nPvZWRokKNUPDBjWv4pW7WwFbXNmny+4Eo7g6rvOhxh9vGJ9jwZ7B3jGRXw2e1mrPyk0eQZ0e\nNtXlty8W4+XopVE/nD5306itUrfpwOFhZQzqexZMOjt96NTUen3fe6uNWhLXj+1ZvmHXub+u\nSi4+VRu0GjW4o7NKsqTHbohY+c1PZ2+bVKUr1u40cMjz5TI/KQ7rEPrq+7PPzlvwc2ySq1dA\nw9Z9h3e9f1xTqYRaVyJH45eje68zdtgYEWqbTI37pNvA9WOiP2lgOrty2eYT5y6kafyeaxfm\n+VDHBQCAf6UiHOzWjZtx2O35EVP7eussZ/avWfXO6Cb1YwJ0KiFE//bBY2OW9ht9+MVG9WvV\nrFm1YqDOUL5evfL3XTC36Ilv702rPmjgqEB36dz3uz+Y8IZl2dqWJZxzdCtgi/1XRhcb1mdv\n8MQlg/L4kl+zCZNieo4dPGSTS5mX313Q8/EcBK31wxHjjjrVGzZiupc6cefyDyaNFhsj+mUt\nlZF8LnzotKxUZ049M3zm8uqdh0wfUjH9xrnFi1bOKNVgQbvA5SPHHsioMHjE5JIupu8/W/3e\nmBHe0SurO2fWzK5JC5r1Gt63ZskrR7bOWz3Pr+nmbv45D0tG8p9nz2qEEMJquXHp+Ir9N1uM\nDM/Rp/6A2hETN/6d0baETi2EuLBhn5Nv2+ddkif0mnXFr/7gkdM95YTPVi85EJ+WMxLaSU9P\nT01Nfdijlx+r1fq4VgU8Hbdu3Xr6G5VlOTk5WZKK0ocMT4jtpGE0GjMyMhw9FseTZVmWZYfU\nZGEjy7Ltj8d7NFQqlYeHR35zi3Cw82/VeXjzV+t56IQQpYp1ifzPzD/SzQE6nRCicvfwD6t9\n9/XBI8f/u/WT9SvUBo8a9Z/rFBZWy99Q8II5GOM/2/br7TmbRtVw0QohKlSqYTnSY/NHZ1rO\nqp+jZwFb1Oj0OklSaXR6fc5bFizGv1bOeye9RB1L7M+VQ5v6a1XJv52M1ZSvUvZBbynIc1+c\n49Z9c808N+ZtWwgrOztp1rsHbpll20ozks7NGDfzerVeK95qY7s+mJFyLM0qv/zKi5W99CKo\n/KyJXn/r3VLjYr64kvL2mslNfQxCiIrVqp95vWfkp38u6VnBtmmXhmPCWtYSQgS2H1lu43fn\nbhhFrmB368zK8XbXKJ2LN6pV2iVHH89KA7zV+6NOJUyp6ydk0+ojN6oOb3vjWMR5o2HRwjFB\nBrUQonJVp6495xRwHGRZtlgsD3jQAOVxVP3zLsgeJyJ7HIosT7kwinCwaxfa+tSRw59ejo2L\nu3bx7NEcc8vUer5vreeFEGkJsSd+OrLr4y3hQ04s2bi0jF5d8IL2Uq4ck2V5UveO9o0u5lgh\ncga7greYz+rllSPH/1S83ar3uyYfjRo0b0yFcqs8ViyKdhv94LcA57kv8UfOal1rZ11aM3i3\nmjOnlRDClCGEECtGhlsNqpSLl+S7K3Hyaf9ixf/O7T+gRt3a1apWDanbsEEZr6vfnlLrSzXz\nMdj6SCqn0OLOEYcvi7vBrliLMlnDcFerRNbq7AQ0nBM5Kdj2d3py/Deb58wbOXzBhsjKTtmF\nJ6ndBlb3XrbuR1G3TfKVjZdNTlMa+t94P9bg1TLo7sfHOrcGdV218fkfB41G4+Tk9IAH7b54\nz40i5zHW/4NLS0vT6/UqFY/NEunp6VarVaPRaLVP45kDhZzJZJJlWZfX5ZJ/G7PZbDKZJEky\nGAyPcbUFv+iKarCzmm7OHjLsV5dqrRqHVK9fpUW7F0a9NdM2KyPp0KKl+3uPGV9KpxZCOHmX\nbNSyQ73nKnfsNnHjn8kTypnzWzA3jYtOUrtsiVlj3yipcr5uC97ipEp5fz0sI/mHPbEp0xZ2\ncFJJTs/0nxp6fvbkic7mpJDwnF/4+3re1AOajuFjQ2yT5rsRKr+DYDXJkirfV1TAK2OmtlP3\n7jNn7t7XprUOFEJIavdR767tfPbnE6d++eXkN5+uX1HjtfBBpYUQ93zColJJQs5+d651yi+w\n5k3v5tOq39Tlu/psOp84I8TXflZw/0bJb0dfN7W+tOagd43B/lrVjVw3ZHhoVAUHO43msRUz\nFyFQ5Li45LwW/hQYjUaDwUCUEUKYTCar1arVah3yD1HYpKamWiwWDoUQwmg0mkwm8XRfoUX1\nnVbKldU/X89Y+u7UXp3bNWlUN9ArJWuWWlf86JEjW47dEwMsxkQhRDFXbQEL5uYc0EpYU/cm\nWAyZ9JvmTI/45lqObgVvMd+1W81CiKtpZttUnd4zKqvjUtX+w4K9c3TM+PP3s2dPZK42IzbZ\nYtX76go4CD71y2Yk//SbMfPCb3riN2FhYcdSTLbJLh3r6TwahHeudGzVtPNpZiFE4tkdkVHb\nAqvWa9ul9/jwhYvfqHRy91rPatUt6X99e/dBdLLV+FnsHZ9nyohHYDXFW2VZp8uZCN1KhwVq\n01efjo08Gd/0jdpCCP8mJY2J+y7e3QWL8ffDSemPsmkAAP4NisYVO1PK5bNn77kEVcK3oiwf\n2n7gVJvggITLZz6JihZCXL6a+Iybv9pQfmLbynMWjNB36tagajkXvZR49Y/Poze4lWvdu7iL\nKT7fBXNvV+dWb0CIz7rxsw2DOlUp6XpiX9TOs/HTx+fsWfAWhRAqSaTF/X3rVgkvL/fslXs0\nftb7ww2T3nF/s5O/uHVgx9rf1OUriT8W/efC1NBK9usP7lDJGLF91Z7KL1ZwPbo9QqV2617N\nWwihdct7XxoEvdHA89CMKUvfCmvtrUne+dGqDMOzdVy1Jru7Cyp3m1FnT9iCeXujZr6q9Ujb\nuSMmxcXrlfpB0p2ruz6PdSkV6hzQsUXJ3cvHL1C/0amki/nQ9pXnTB6zujxcsMu+eUKIjJT4\n/dtWqvWl+gW55+wn6QbU95u9eJbQVu9RylUI4RsypJJu0NSJi4f0esVbdfvz9RFu+X6iDQAA\nMhWNYJf4a+T4e58TsuyT7eF9rkdGL9ydqi5bsdbrEyO83hu2efywujExQQZ1gwELppeO2f7F\n3sWfXU8zS17+pUJe7DmyZ1uNJDS+HfJbMM9NvzptcfrKpR8vX3DLpC1VvuaoeZND8roIV8AW\nhRDV2z+THvXhm2OabF490m4h1aglM9csjYp6d3qa5FK5TpOFK3p7XozuO2XitiqrO1bJ/gC3\nZMtpI65/sO3T5XtvZQSUrjgofHY1Z40Qwin/fRn34eyopdGRi6bdtjoH1Wo5d0iPHAOWVM4j\npnfqPTpy/S+Ne1frHt4vae3utRNiUlw8fYNqtpg7pIMQqiGLF7pFrFz1zvQks6pUxbqjFg2p\n8ZA/WWF/84Sk0ZUKajBlybDiua7YCSEq9W6RMTC6fPcJqszOPjM/nLzsg/Xvz50sDL5Nuowf\nfOS96IfaNgAA/z5S1r24AGySk5PdVua6rAgUZqMdcCaPj493d3fnO3ZCiMTERLPZ7OTkxBfL\nxN3v2Lm53f8XMhXPaDSmpKRIkuTj4/PUNlpUv2MHAACAHAh2AAAACkGwAwAAUAiCHQAAgEIQ\n7AAAABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACkGwAwAAUAiCHQAAgEIQ7AAA\nABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACkGwAwAAUAiCHQAAgEIQ7AAAABSC\nYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAACkGwAwAAUAiNowcAFEY3w25otVoPDw9H\nD8Tx0tPTU1NTvby8HD0QxzObzYmJiUIILy8vtVrt6OEAQB64YgcAAKAQBDsAAACFINgBAAAo\nBMEOAABAIQh2AAAACkGwAwAAUAiCHQAAgEIQ7AAAABSCYAcAAKAQkizLjh4DULhkvSgkSXLs\nSAoJWZY5FDa22uBo2FAYWThp2ONlksUhhUGwAwAAUAg+igUAAFAIgh0AAIBCEOwAAAAUgmAH\nAACgEAQ7AAAAhSDYAQAAKITG0QMAChvrt5uX7Txw7K9kdZUaDfoM71vemZeJksV9P3ngvFP2\nLf3WbA31MQgh8i+GAoqE+lGItW+GGWYu7+bndLfhMRYDRVKE5SiMQngC4Tl2wD3+2DZp5IY/\new4dVs3LvHtFxHHp+Y0rhnJlW8HOfzR02o8hIwZWz2opU++Zkjq1yL8YCigS6kcR5AvfrR6z\naGfnyJie/s62psdYDBRJkZVHYRTGE4gMIIs1fWjn0JFbfrNNGW9917Zt2/VXUhw7KDxRB4b1\nHLTwdB4z8iuGAoqE+in64g4v7tO9Y9u2bdu2bRsddyez9TEWA0VSNOVdGIXyBMKbBCBb+u0D\nl42WFi1K2ib1ns/VdtX9/O01x44KT9SJpHSv2p6WtKRr1xPtP7/IrxgKKBLqRwE8q3eePHP+\nogXj7RsfYzFQJEVUnoUhCuUJhGAHZMu4c1IIUc1Zm9VS1VmTePK240aEJ+54iinu4AdduvUa\nNKB3x+79V+w8aWvPrxgKKBLqRwF07iWDgoIqVChj3/gYi4EiKaLyLAxRKE8gfGETyGZNvyOE\n8NFkv+Hx1arNKUbHjQhPliUjNkWtLev77IKNMz3l5COfR70TOUVfcX2fKp75FUMBRUL9KNVj\nLAaKREkK5wmEK3ZANpXOSQhxy2zNaok3WdROOseNCE+WWldy69atC4e193fV69x8n+86rr2P\n09erTov8i6GAIqF+lOoxFgNFoiSF8wRCsAOyaV2ChRDn08xZLRfSzB41PB03IjxttQOcTEk3\nRP7FUECRUD9K9RiLgSJRtsJwAiHYAdkMnk1L6NRfHLxumzTdOfFjckadl4o5dlR4chJ/jeg/\nYOi1jKy3yNb9f6d6Vqsk8i+GAoqE+lGqx1gMFImSFM4TiDo8PPwRdwxQDkldxfq/LZt2+1ao\n4mS8tnnhO7H652b2aCI5elx4QnQe5Q9v3bLjREKpAPfUG1f2bXr389+so2aFFdep8y2GAoqE\n+lEK2ZK0Zevu6u061XTRCpH/v+w/KAaKpCjLURiF8wTCA4qBe8mWfeuXbNn3Y7xRqlDrhcGj\nBga5cI+RkqXfOrNm+cZD/7tgVLuVr1gjtN+gRqVdM+flVwwFFAn1owiWjCuvdRrSZdXmrOfQ\nPs5ioEiKrNyFUQhPIAQ7AAAAheA7dgAAAApBsAMAAFAIgh0AAIBCEOwAAAAUgmAHAACgEAQ7\nAAAAhSDYAQAAKATBDgAAQCEIdgDw9BzoXlGSpPId1+aedWJGXUmSPo1PexLbdVarKnY/8CTW\n/IC2TOke6OfqG9Qvz7lJf06RctE5uZYLbjRy/uY0a3bPaWU83IoPzG8rtvX0OJ/w2McPFBX8\njAkAPG2Xtveb/VObKfX8HD2Qp+TOtchuczaXDR2zqNPLBXQLeLZ3r2f9707Jabfj9m//ZMnE\n7l+eU59Z29nWqtJo1FYuSQD5ItgBwNPmo1HNbR029OpuL82/4sff027sFkIM/GBan0C3ArqV\nbDnynekh9i2mxePrBNQ5E93j7LLXqjprhBDhv8eHP8mhAkUd73sA4GlbvbRd2s09raYffAzr\nkjPSzU/1J7+t5kTLQy4iW61CCL3qoVOs1qXG/Hr+stW0M+GJfEINKA/BDgCetoo9Y0bW8Pl5\nwSvbrt7Js8O4QHf3wHH2LbZv4F1Kz8xUm6v6epSZdnTlqFIerk46tad/+Z6T1luF+Gnt+Npl\nA5z0ruWqPRMe80uO1Z78ZN4LwWVcdHrfklW6j3g3NiM7oaX8eeDtbq1K+3nqXbyr1G42Y8Xn\ndl9sE2sq+3hVWJye+GPPF6u56r1TLHlEybgjDLQ9TgAAB9BJREFUW3u0buTn6apz8ahU/6WZ\na7+1te+o7ucfslMIMaaUm4tf54c7UkKYjRYhRGl95udLc8t52n/H7ujm+S/VC3Iz6HyKV+w2\nYsn1DPtR32enrKabERP61axQzKDVuvsENu/61g83jQ87PKCwIdgBwNMmSepZX65wFqmDWkyx\n3r973lKvb3xu2NqWg6d+9P78xj63Ns4Le6bbC03Gft3mjSlzpw6SLx6b2avewaSMrP43jk2r\n03W6U/WWo8cNbVw+dfMHY0KeGWq7L+HO3ztCqr60bOevzbsOnDZ2UE2PP8MHt6kbttZ+c1Zz\nQljIy3GBLeZ+sMwp17W3Gz8tqvRc94+/S2jTY+iU4WFlUn6e3rdpi6n7hRDPrty6ZVlDIcTA\nDds/2zr5ofbRnPbbnF8SXAJCO/s55Z57MqJbg+4TD11y7zxwdP/QhsdXj2vQ+eOsuffdqSWv\nhAxfuN6vQYfJM2e+0aXBj9siXqrZzfRUr34CT4AMAHha9ncLEkKcTTXJsnxgUn0hRJf1F2yz\njofXEUJsu5kqy/LYUm5upcbaL2ibe9Fotk3GVPERQoz5KtY2mRa/Swih1pc4eMtoa/ltUzMh\nRJczN22Ttig2+tPzmauzmqIG1xBCdPjskizL4dV9tM5VD99My9rc9lEhQojZvyfaJqMqeUuS\n1OrDn/PZLWsXf2etc9UDV+/Ypi2mG6Nr+0oqw4Hb6bIsXz/RVgix6Epyfofl9qXJQohiz/Wd\nkG38W4N71/R3ci39/K6/UrJ6zinr4VpsgCzL5rQL/jq1c0Db00kZtlkpV76q7KwVQrx+Lv6+\nO2VKPa+SpNKtt2XNPTz2WV9f383XU/MbJFAkEOwA4OmxD3ZWU3xrXyeNU9CJlAz54YOd1rmK\nfQc3tSqg7tasyduXpgsh2p64bpt0UkmuxQfZ9zelXXBWq/xqrTXdOa2WpODRP9rPTU/cL4QI\nHpPZGFXJW1IZ4jIsee5U6o1PhBA1Rvxg35hwdowQounW3+UHDnZ5qtN1Qmx69nazgt3VQ52E\nEKF7L9uv58cxwbZgd9+dMhsvG1SSe9keRy8n5TcqoCjio1gAcAxJ471uz0SL8ff2r6//B4ur\nND72kxpJ6P28sleu0ubo7xXc6Z7+hqA23obUuO+MCXsssnzq3Qb2z5DTe74ghLh96nZWf51r\niL827/8yjLf2CiHK9y5n3+ga2FsIcfXLaw++R3XCj9v//3QnPvbjuR2ObZnfJGxf7s7Xv7sk\nhOhWx9e+sULf2plDut9OqfWBX8zrJf8V06CMZ7maz/YYNGrF5i8Snu5tKMCTwONOAMBh/OpN\nXd0+qt+OAeFH2oYW2FO2PmrmyH1LqkYSkkovVDohRPC4qHealcjRQe+R/fARSeVSwOjy2Jyk\nEULIjxCVnL1LdJr4cdOFLj98+b4QrXLMVWlUQogcX/ZTGe5G2wfYqSbj1l3vM3HHjl3fHjh4\naN/aTZGLR41suOP0Ny18DP94zIDDccUOAByp54b/VHTSLmzT66Y5x1NE7pmM++lRf00h4fSO\ne9aefmlnvNG9fHOD9ytqSTInVm5lp3mTMomJiVJZ5wdZs8GrlRDi4sZL9o0pV6KFEAHNAx5t\n1KqXPPWmtPO5Z/g9X04IsflEvH3jta+OZg7pfjtlSjl/5MiRK+5B3QaNWb5hx6mLCb98PjP1\n2g8jphx/tAEDDkawAwBH0roE74nskBb/Zad1v2U1OqtVxoTdN02Zt8wa438Y8nXsI24o5e9l\nk3b/cXfKsmlM+xSLtf3CxhpDUHg17wvRYV9dS83qHDO0fffu3S8/2H8RTr4dO/g5n1vR//sb\nmY8Lkc0J83qsklT6aa8GPuKw1ZJkSb+au9235jx/nfrLsBHn75htLRm3/zd43DHb3/fdqTtx\nHzVs2LDL/OwYV7ZefSGE+e7agCKKj2IBwMEq9Ng0av5/3zudffGpXa9KM2YfrdWs97iezUzX\nzq197/04X5248kiZQ+9nmN+u2uke/epXcDv+zdbt+y8FtpoV0ShACPH258siK/VoXaHGa93a\n1a3offrrLdH7fg3uE93L/4Gu2Amh+mjn1C8bT36xQt2w/q+Vc03b/+maL3651WzyV8099Y8y\nZiFEGSeNbE08mJTxnLvOvl1tKLdvUYdab31cu1yjXj1f9hdxu9ZG3274utgbZetQ8E55lJ3x\nkt/Kr2Y1eeWPvg2rl7cmXtqxKkqt9QmfW/sRBww4mKPu2gCAfyH7u2Ltpfz9iZtaJe7eFWu1\n3Fk6qnvlMsW0kiSEKNm498HDrcW9d8Xq3Rvbr8FLoyr98r6syaTLs8W9d8U22Xhs1fSBIeWK\nGTQ6v9LB/aZE3jZbs/onnt/7RugLxTxddc7eVUKemx65x5Q9U46q5G3wbF7wrv19cGO3Fg18\n3J00BrcKdZrOWPNN1qwHvCs2x80TNifm1hVCVHw9xjaZdVeszQ8b5zStXd5Vr3HzDew4dGly\nyi/i7uNO7rtTqdcODe/6Umlfd41K7eZT6oXQ/tuP3yx4H4HCT5JlbgICgELKmp505Ya5dClv\nRw8EQNFAsAMAAFAIbp4AAABQCIIdAACAQhDsAAAAFIJgBwAAoBAEOwAAAIUg2AEAACgEwQ4A\nAEAhCHYAAAAKQbADAABQCIIdAACAQhDsAAAAFIJgBwAAoBD/B4Jc1WiITG2yAAAAAElFTkSu\nQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Lets visualize\n",
    "\n",
    "library(ggplot2)\n",
    "\n",
    "top_end_stations %>%\n",
    "  ggplot(aes(x = reorder(end_station_name, number_of_rides),\n",
    "             y = number_of_rides)) +\n",
    "  geom_col(fill = \"darkorange\") +\n",
    "  coord_flip() +\n",
    "  labs(\n",
    "    title = \"Top 10 Most Used End Stations\",\n",
    "    x = \"Station Name\",\n",
    "    y = \"Number of Rides\"\n",
    "  ) +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "id": "861332ed",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-08-14T02:41:12.395094Z",
     "iopub.status.busy": "2025-08-14T02:41:12.393873Z",
     "iopub.status.idle": "2025-08-14T02:41:12.405056Z",
     "shell.execute_reply": "2025-08-14T02:41:12.403981Z"
    },
    "papermill": {
     "duration": 0.074721,
     "end_time": "2025-08-14T02:41:12.406644",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.331923",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/markdown": [
       "<div class='tableauPlaceholder' id='viz1749028470937' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ho&#47;HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140&#47;RidershipbetweenCasualRidersandAnnualMembers&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /><param name='embed_code_version' value='3' /><param name='site_root' value='' /><param name='name' value='HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140&#47;RidershipbetweenCasualRidersandAnnualMembers' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ho&#47;HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140&#47;RidershipbetweenCasualRidersandAnnualMembers&#47;1.png' /><param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div><script type='text/javascript'>var divElement = document.getElementById('viz1749028470937');var vizElement = divElement.getElementsByTagName('object')[0];if (divElement.offsetWidth > 800) {  vizElement.style.width='100%';  vizElement.style.height=(divElement.offsetWidth * 0.75) + 'px';} else if (divElement.offsetWidth > 500) {  vizElement.style.width='100%';  vizElement.style.height=(divElement.offsetWidth * 0.75) + 'px';} else {  vizElement.style.width='100%';  vizElement.style.height='750px';}var scriptElement = document.createElement('script');scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';vizElement.parentNode.insertBefore(scriptElement, vizElement);</script>"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Tableau Dashboard\n",
    "\n",
    "IRdisplay::display_markdown(paste0(\n",
    "  \"<div class='tableauPlaceholder' id='viz1749028470937' style='position: relative'>\",\n",
    "  \"<noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ho&#47;\",\n",
    "  \"HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140&#47;\",\n",
    "  \"RidershipbetweenCasualRidersandAnnualMembers&#47;1_rss.png' style='border: none' /></a></noscript>\",\n",
    "  \n",
    "  \"<object class='tableauViz' style='display:none;'>\",\n",
    "  \"<param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />\",\n",
    "  \"<param name='embed_code_version' value='3' />\",\n",
    "  \"<param name='site_root' value='' />\",\n",
    "  \"<param name='name' value='HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140\",\n",
    "  \"&#47;RidershipbetweenCasualRidersandAnnualMembers' />\",\n",
    "  \"<param name='tabs' value='yes' />\",\n",
    "  \"<param name='toolbar' value='yes' />\",\n",
    "  \"<param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ho&#47;\",\n",
    "  \"HowDoesaBike-ShareNavigateSpeedySuccess_17490155704140&#47;\",\n",
    "  \"RidershipbetweenCasualRidersandAnnualMembers&#47;1.png' />\",\n",
    "  \"<param name='animate_transition' value='yes' />\",\n",
    "  \"<param name='display_static_image' value='yes' />\",\n",
    "  \"<param name='display_spinner' value='yes' />\",\n",
    "  \"<param name='display_overlay' value='yes' />\",\n",
    "  \"<param name='display_count' value='yes' />\",\n",
    "  \"<param name='language' value='en-US' />\",\n",
    "  \"</object></div>\",\n",
    "  \n",
    "  \"<script type='text/javascript'>\",\n",
    "  \"var divElement = document.getElementById('viz1749028470937');\",\n",
    "  \"var vizElement = divElement.getElementsByTagName('object')[0];\",\n",
    "  \"if (divElement.offsetWidth > 800) {\",\n",
    "  \"  vizElement.style.width='100%';\",\n",
    "  \"  vizElement.style.height=(divElement.offsetWidth * 0.75) + 'px';\",\n",
    "  \"} else if (divElement.offsetWidth > 500) {\",\n",
    "  \"  vizElement.style.width='100%';\",\n",
    "  \"  vizElement.style.height=(divElement.offsetWidth * 0.75) + 'px';\",\n",
    "  \"} else {\",\n",
    "  \"  vizElement.style.width='100%';\",\n",
    "  \"  vizElement.style.height='750px';\",\n",
    "  \"}\",\n",
    "  \"var scriptElement = document.createElement('script');\",\n",
    "  \"scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';\",\n",
    "  \"vizElement.parentNode.insertBefore(scriptElement, vizElement);\",\n",
    "  \"</script>\"\n",
    "))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "bb95cb26",
   "metadata": {
    "papermill": {
     "duration": 0.026108,
     "end_time": "2025-08-14T02:41:12.458222",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.432114",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "98a37068",
   "metadata": {
    "papermill": {
     "duration": 0.026991,
     "end_time": "2025-08-14T02:41:12.514185",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.487194",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Key Findings\n",
    "👥 Ride Patterns by Rider Type\n",
    "Annual Members: 91.7% of total rides; average duration ~11 minutes.\n",
    "\n",
    "Casual Riders: 8.3% of total rides; average duration ~23 minutes.\n",
    "\n",
    "Annual members consistently take more rides, while casual riders spend more time per ride.\n",
    "\n",
    "🗓️ Ride Patterns by Day\n",
    "Weekdays: 81.12% of total rides; average duration ~11 minutes.\n",
    "\n",
    "Weekends: 18.88% of total rides; average duration ~15 minutes.\n",
    "\n",
    "More rides occur on weekdays, but ride durations are slightly longer on weekends.\n",
    "\n",
    "📊 Rider Behavior by Day & Type\n",
    "Weekdays\n",
    "\n",
    "Annual Members: 76.5% of total rides; avg. duration ~11 minutes.\n",
    "\n",
    "Casual Riders: 4.62% of total rides; avg. duration ~20 minutes.\n",
    "\n",
    "Weekends\n",
    "\n",
    "Annual Members: 15.2% of total rides; avg. duration ~12 minutes.\n",
    "\n",
    "Casual Riders: 3.68% of total rides; avg. duration ~27 minutes.\n",
    "\n",
    "Recommendations\n",
    "🎯 Promote Weekday Commuting Benefits to Convert Casual Riders\n",
    "Annual members ride more frequently, especially on weekdays. Highlight time and cost savings to encourage casual riders to switch for weekday commutes.\n",
    "\n",
    "🧳 Launch Weekend-Focused Campaigns for Casual Riders\n",
    "Casual riders prefer weekends and take longer rides. Offer weekend membership trials or leisure ride incentives to attract and convert them.\n",
    "\n",
    "⏱️ Leverage Stable Usage Patterns of Annual Members\n",
    "Annual members maintain consistent ride durations across all days. Use this predictability to design loyalty rewards, retention offers, and personalized messaging.\n",
    "\n",
    "Next Steps\n",
    "Build targeted marketing campaigns based on observed ride behavior patterns.\n",
    "\n",
    "Explore additional data sources (e.g., assistive ride use cases) to refine strategies."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e77aee32",
   "metadata": {
    "papermill": {
     "duration": 0.025755,
     "end_time": "2025-08-14T02:41:12.566006",
     "exception": false,
     "start_time": "2025-08-14T02:41:12.540251",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Copyright 2025 Anudeep Suraneni and Kaggle\n",
    "\n",
    "Licensed under the Apache License, Version 2.0 (the \"License\");\n",
    "you may not use this file except in compliance with the License.\n",
    "You may obtain a copy of the License at\n",
    "\n",
    "    http://www.apache.org/licenses/LICENSE-2.0\n",
    "\n",
    "Unless required by applicable law or agreed to in writing, software\n",
    "distributed under the License is distributed on an \"AS IS\" BASIS,\n",
    "WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n",
    "See the License for the specific language governing permissions and\n",
    "limitations under the License."
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 8063074,
     "sourceId": 12754734,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 30.732373,
   "end_time": "2025-08-14T02:41:13.111549",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-08-14T02:40:42.379176",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
