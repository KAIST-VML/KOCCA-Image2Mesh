# clip similarity

for num in range(1, 11):
    f= open(f'clip_s_{num}.txt','r')
    lines = f.read().splitlines() #한줄씩 문자열 읽기
    data = []
    sum=0

    for line in lines:
        data.append(line)

    for i in range(0,len(data)):
        sum += float(data[i])

    avg = sum/len(data)
    f.close()

    print(f"clip_s avg for 'clip_s_{num}.txt': {avg}")

# lpips
for num in range(1, 11):
    f= open(f'lpips_vgg_{num}.txt','r')
    lines = f.read().splitlines() #한줄씩 문자열 읽기
    data = []
    sum=0

    for line in lines:
        data.append(line)

    for i in range(0,len(data)):
        sum += float(data[i])

    avg = sum/len(data)
    f.close()

    print(f"lpips avg for lpips_vgg_{num}.txt: {avg}")