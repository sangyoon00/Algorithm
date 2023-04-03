import csv
import os
import re

def RemoveSymbol(src):
    dest = ""
    for elem in src:
        if str.isalpha(elem) or str.isspace(elem) or str.isalnum(elem):
            dest+=elem
    return dest
def listToString(str_list):
    result = ""
    for s in str_list:
        result += s + " "
    return result.strip()

dir_path = "C:\\Users\\SANGYOON\\Project_H\\Project_Hallow\\case4\\판례내용"

for (root, directories, files) in os.walk(dir_path):
    for file in files:
        file_path = os.path.join(root, file)

        with open(file_path,'r') as textfile:


            list=[]
            result_list=[]
            for row in textfile:
                row=re.sub(r"[\t\"]*","",row)
                newstr=row.strip()
                new_string=RemoveSymbol(newstr)

                list.append(new_string)
            result=listToString(list)

            result_list.append(result)
        


        output_file=open('case4_contents.csv','a',newline='')
        wr=csv.writer(output_file, quoting=csv.QUOTE_ALL)
        wr.writerow(result_list)
        


