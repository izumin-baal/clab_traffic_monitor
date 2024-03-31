# clab_traffic_monitor
containerlabでサクッとトラフィックをモニタリングしたいときに使えるツール  
現在はIOS-XRのみ対応

## 用意するもの
.env
```
CLABTMON_USERNAME=username
CLABTMON_PASSWORD=password
```

## 使い方
- 起動
```
docker compose up -d
```

- 停止
```
docker compose down
```

- 再起動
```
docker compose restart
```
## アクセス
- http://{URL}:3000

## IOS-XR
```
telemetry model-driven
 destination-group DG_CLABTMON
  address-family ipv4 172.20.20.252 port 57000
   encoding self-describing-gpb
   protocol grpc no-tls
  !
 !
 sensor-group SG_CLABTMON
  sensor-path openconfig-interfaces:interfaces/interface
 !
 subscription SUB_CLABTMON
  sensor-group-id SG_CLABTMON sample-interval 5000
  destination-id DG_CLABTMON
 !
!
```