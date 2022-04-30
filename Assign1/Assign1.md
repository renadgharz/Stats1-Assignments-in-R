---
title: "ADM 2303 - Assignment 1"
author: "Renad Gharz"
output: pdf_document
---

# 1. Child Safety Seat Survey
<strong>Canada has a Road Safety Vision of having the safest roads in the world. Yet, the leading cause of death of Canadian children remains vehicle crashes. In 2006, a national child safety seat survey was conducted by an AUTO21 research team in collaboration with Transport Canada to empirically measure Canada’s progress toward achieving Road Safety Vision 20210. Child seat use was observed in parking lots and nearby intersections in 200 randomly selected sites across Canada.</strong>

## 1.1
>Using data table, create a 4×4 cross-tabulation (i.e., contingency or pivot table) of the children in the survey by age group (row position) and type of restraint (columnposition).

## 1.2
>What are the variables measured in this survey? Are they qualitative (i.e., categorical) or quantitative?

## 1.3
>Construct a side-by-side bar chart to compare the type of restraints at different age groups.

## 1.4
>Construct pie charts or a stacked bar chart to compare the type of restraints at different age groups.

## 1.5
>Write a short paragraph summarizing the information that can be gained by looking at these graphs.

# 2. National Cable Service
<strong>Like all companies, cable companies send stakeholders reports on their profits, dividends, and return on equity. They often supplement this information with some metrics unique to the cable business. To construct one such metric, a cable company can compare the number of households it actually serves to the number of households its current transmission lines could reach (without extending lines). The number of households that the cable company’s lines could reach is called its number of cable passings, while the ratio of the number of households the cable company actually serves to its number of cable passings is called the company’s cable penetration. There are various types of cable penetrations - one for cable television, one for cable internet, once for cable phone, and others. For example, National cable television penetration is a probability defined as follows:</strong><br><br>

$$
\frac{\text{the number of cable passings that have National’s cable television services}}
{\text{the total number of cable passings}}
$$

<br><strong>National’s cable has 38 million cable passings. Let us consider National cable’s two services viz. cable television service (A) and cable internet service (B). 10.9 million has only cable television service and 10.1 million has only cable internet service, while 8.2 million has both services.</strong>

## 2.1
>Create a 2 × 2 contingency table considering cable television service (A) in the row position and cable internet service in the column position (B).

## 2.2
>What is the probability that a randomly selected cable passing has either cable television service or cable internet service?

## 2.3
>What is the probability that a randomly selected cable passing does not have National’s cable television service and does not have National’s cable internet service?

## 2.4
>Are the events cable television service and cable internet service mutually exclusive? Justify.

## 2.5
>Are the events cable television service and cable internet service independent? Justify.


## 2.6
>If a randomly selected cable has television service, what is the probability that it does not have cable internet service?


# 3. Flight Delays
<strong>Below we give two contingency tables of data from reports submitted by airlines to the U.S.
Department of Transportation. The data concern the numbers of on-time and delayed flights
for Delta and Frontier Airlines at five major airports.
</strong>

<strong>Delta Airlines</strong>

$$
\begin{table}[]
\begin{tabular}{c|cc|c}
\textbf{}      & \textbf{On Time} & \textbf{Delayed} & \textbf{Total} \\ \hline
Los Angeles    & 248              & 31               & 279            \\
Phoenix        & 110              & 6                & 116            \\
San Diego      & 106              & 10               & 116            \\
San Francisco  & 252              & 51               & 303            \\
Seattle        & 920              & 152              & 1,072          \\ \hline
\textbf{Total} & 1,636            & 250              & \textbf{1,886}
\end{tabular}
\end{table}
$$

<strong>Frontier Airlines</strong>

$$
\begin{table}[]
\begin{tabular}{c|cc|c}
\textbf{}      & \textbf{On Time} & \textbf{Delayed} & \textbf{Total} \\ \hline
Los Angeles    & 231              & 39               & 270            \\
Phoenix        & 1,613            & 138              & 1,751          \\
San Diego      & 128              & 22               & 150            \\
San Francisco  & 107              & 43               & 150            \\
Seattle        & 67               & 20               & 87             \\ \hline
\textbf{Total} & 2,146            & 262              & \textbf{2,408}
\end{tabular}
\end{table}
$$

## 3.1
>What percentage of all Delta Airlines flights were delayed? That is, use the data to estimate the probability that an Delta Airline flight will be delayed. Do the same for Frontier Airlines? Which airline does best overall?

## 3.2
>For Delta Airlines, find the percentage of delayed flights at each airport. That is, use the data to estimate each of the probabilities P(delayed | Los Angeles), P(delayed | Phoenix), and so on. Then do the same for Frontier Airlines. Which airline does best at each individual airport?

## 3.3
>Compare the results of part 3.1 and 3.2 i.e., the performance of both airlines? Are they aligned or contradictory? Explain.