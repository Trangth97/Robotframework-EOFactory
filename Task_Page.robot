*** Settings ***
Library  Selenium2Library
Library     Collections

*** Variables ***

*** Test Cases ***
Get Task Status
    Get Data Task Table

*** Keywords ***
Get Data Task Table
    @{data}
    ${rows}     find elements  //*[@id="tasks_dataTable"]/div/table/tbody/tr
    FOR    ${row} IN  @{rows}
        @{row_data}
        @{cols}     create list  find elements  //*[@id="tasks_dataTable"]/div/table/tbody/tr/td[7]
        FOR  ${col}  IN  @{cols}
            append to list  @{row_data}  get text   ${col}
        append to list  @{data}


            row_data.append(col.text)
        data.append(row_data[0:7])

    return pd.DataFrame(data,
                        columns=['task_id', 'created_time', 'start_time', 'end_time', 'type', 'name', 'status'])
