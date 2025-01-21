Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4733CA17EF6
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 14:40:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18362385CA5
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 08:40:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737466819; bh=79aAJdXDmcx60jCszNYeHCVEbTvuVMJy1nSQZYaaN/U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ORQ9rhFAVACs6AZ+4nDX1poK5RXVG7SCE49InV0yFcEz7KXHfjKHzQIw7N5dluCe8
	 OlRt7OFwEB9WdgSYNvsRIUV4CuB4CAdgTkR2P9RWrG/Gtfx+8h6mz+2ngR7yFbjhBD
	 QLL9pvUZRa1eYl1rcuZhw26izGwNfpWK9RHHF9TZuZQWgngR9jY8PhNHgDwQdvA7WA
	 ZTOGAg93eHYwmgbOtGtRMTQmkZ29zZAvhHxNgakZTzyx4LyIfyjuRw3GkqiMWgg+X6
	 dxyrlwCOSw1hhNS6Z9A1jFtIrZIO/6403o5GBJppg5DjH7O+u6AoyvCj7I4zmUwi0g
	 VLda+fxNXV3Eg==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 86879385C93
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 08:39:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=baesystems.us header.i=@baesystems.us header.b="lA3LACs6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.us; i=@baesystems.us; q=dns/txt;
  s=trusted001; t=1737466790; x=1769002790;
  h=from:to:subject:date:mime-version;
  bh=9UXa/mZro3NBFG3fVDgxdKSKWbTKIE9w/ezOHirgVFs=;
  b=lA3LACs6HeARPiMGiv4leMrXz75hfOGYbDnG2oN2Prwv223dJJsk/Sdh
   28b7ZwRh1nuX/GbqasCE0Hg356B20BCiCScQSG0FBsCA+fNmxt5eAsNh/
   j9eSLKUjoe+GaQvGIDIFaeChrNUFOK4vZvfSCLP9sCir/BdUmxRAWzraZ
   4RDbA+JksW32eszxoR/526g6/Zh5KUvz7XMwqBl0PufEZBLrzT5AhEEnN
   3jfLluDsESrfpS5lEMam69G8Xgas6xYuYHrrYaI8pJ7Zt4etSSwT0SmD+
   C4A99J8G6/k0M6L/0LZ3e+g3d9s09/75hzWUB658ZPh9Fxt2AEfkv8kyh
   w==;
X-IPAS-Result: =?us-ascii?q?A2AXBQAPoo9n/0HBJQpagQkJgwtbKH2CAZYnnG+DKg8BA?=
 =?us-ascii?q?QEBAQEBAQEHAQFEBAEBhQcCinQnOBMBAgQBAQEBAwIDAQEBAQEBEAEBBgEBA?=
 =?us-ascii?q?QEBAQYFAYEghTVHDIJbhDNeARUrAT4mAQQbgnqCHEizcoE0GgJlghgE3gQJA?=
 =?us-ascii?q?YE+gWqGZAEqgTKEDziGS0OBFUKHa4QTgi8EgjKBRYNuhlQSggqFDIdfiXSBR?=
 =?us-ascii?q?yIDJjMsAVUTFwsHBYFxAy02FRyBSkQ3OYIMAWlLOgINAjU7gWMkWIIrhFyER?=
 =?us-ascii?q?YRRhVuCFIcBHUADCxshMT03FBsFBIE1mmiFGCQJNCFoY4FDkm9hj0yOEpURB?=
 =?us-ascii?q?wOCZIE3oXwXl24DkmIumE4ioy8nGIRzAgQCBAUCDwiBfoF+gQKDJlEZj14BB?=
 =?us-ascii?q?8AvgTQCBwsBAQMJkAksgR0BAQ?=
IronPort-PHdr: A9a23:C8lu1BHhPLxWflcBkc1i7p1Gf99LhN3EVzX9CrIZgr5DOp6u447ld
 BSGo6k21RmQAt+QsakMotGVmp6jcFRD26rJiGoFfp1IWk1NouQttCtkPvS4D1bmJuXhdS0wE
 ZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZrKeTpAI7SiNm82/yv95HJbAhFiiexbalvI
 Bi0swndudcajIV/Iast1xXFpWdFdOtRyW50P1yfmAry6Nmt95B56SRQvPwh989EUarkeqkzU
 KJVAjc7PW0r/cPnrRbMQxeB6XsaSWUWjwFHAxPZ4xHgX5f+qTX1u+xg0ySHJ8L2TLQ0WTO/7
 6d3TRLjlSkKOyIl/GzRl8d9ir9QrhC8qBxl24PaYJ+bOudifq3Tft0VWWVOU91LWCBdHo+xd
 ZcDA/YfMetesoLzp0EOrRy7BQS0Cu/h0CVHhnvy3a09z+QhDRvJ0wk4E9kTtHrbss/1O7kXU
 eG10aLGyijIY/dY1jng7YTEfA0qrPaOXb1ua8re10wvFgPfglWIs4PlOzeV1uMRs2iH9eVtT
 vmghHQ5pAFqojmv3dsshZfMhoIO0FzE6D55zZ8zKNalR0F1fcSqH4FMtyGGKYR2WMUiTnlpt
 Ss51LAKp4K3cTUJxZk7xhPTd/yKfoiV7xztSOqfLzh2iW57dL+9iBu/80itxvDyWMWpzlpEo
 TRIn8TCuH0P0RHY98uJSuNl80u8xTqDzQ7e5+NeLUwpkafWJYQtz78wm5YLr0jPAjP6lFjzg
 aKZdUgp/vKn5uH5brn6upORMoB5hh/9P6krn8GzHPk0Pw4TVGWF/eS8yabj/VHnT7VQk/M2k
 6jYv47CKMgHoKOyHhVb3Zw56xmlCjeryNEYnX4aI11bYB+HlI3pO03WIPD/EPe/n0ygkDd1y
 PDCOb3sGovNIWLDkLfneLZ98EpRxQ43wNxD+p5YELcBL+jpVkDqrtPXEAQ5Mgyvw+b7Ftp90
 5geVXiTDa+eNaPeqV6I5uQxLOmQfIIZpSrxJ+Ir6vPsl3M1hFsQcKez0ZYWaH20BvFmLF+YY
 XrojNcBC2AKvg8mQezollKCSyBcZ3OyXq4m/jE0EoamDYPERoCxnLyOxjy2EYZMaW9YEVCNE
 Wzod5maVPcJcyKeONJhkiccWbinUIAuzQuuuxPiy7p7MurU/TUVuY/72Nhv++LTjQ0y9SBzD
 8mFzmGNVHt0nnsRSz8rx6Bwv1Z9ykyY3Kh8gvxYDsBT5+hTXggkKZ7c0/F6C8voVg3dedeJT
 QXuftLzSywqVMp03sQDeV1VH9S5kguF0ja2HqRTnLuOTtRg77nGxz3sPMtn0F7C1bI9lB8rX
 tdSLiutgasppCbJAIuc2X2Qk6KtabgVmGbv+X2OyHvGmQkYbTUxG+2RX30Fa07H68zw4kfFU
 6OnIb4uPxBQ0tKPL7AMd8a/3gYOf+vqJNmLOzH5oGy3HxvdnttkJKLmeGQYiSPaDkVM0wUe5
 m2POgV2ACC963nfAzpjGROKAQvs/OBypWn9QhoyyAeHPEFk3qC+rxgSg/HUQvgP37UC7SEmr
 Tg8HFu009/MTdSaoA80dqxResIm/FpCziTErF8VAw==
IronPort-Data: A9a23:8tEoI6uknvOBFI5ByqmFCxh1oufnVOFcMUV32f8akzHdYApBsoF/q
 tZmKWiCb/7YZWajctpxaoW2901U75SHytdjTwBq+y1mRnsXgMeUXt7xwmUcn8+xwm8vaGo9s
 q3yv/GZdJhcokf0/0vraP67xZVF/fngbqLmD+LZMTxGSwZhSSMw4TpugOdRbrRA2LBVOCvT/
 4qpyyHjEAX9gWMsazhNs/jrRC5H5ZwehhtJ5jTSWtgW5Dcyp1FNZLoDKKe4KWfPQ4U8NoZWk
 M6akdlVVkuAl/scIovNfoTTKyXmcZaOVeS6sUe6boD56vR0So3e5Y5gXBYUQR8/ZzxkBLmdw
 v0V3XC7YV9B0qEhBI3xXjEAexySM5Gq95fOH3yHiNe9xHeaSFL3k9dpLFM0YKAhr7Mf7WFmr
 ZT0KRgTZxCFgvnnkePjE69qj4IpJcTwLZgDt3R7izreCJ7KQ7iaG+ORupkBjWx22J0m8fX2P
 qL1bRJtYQ7NZgwJIl4TDJUigO6AjHDyaCxDtF+Qvuwq+AA/ySQrgOeybICJIIziqcN9rnqIn
 1Dd2GjCUzIkMMe/xRnG0l/2mbqa9c/8cMdIfFGizdZ3m0eLg3EIBQcNfV+6uuWizEOiR89Eb
 UcT/0ITQbMarRTtFYa7Bkzj5iDZ1vIBZ+dt/yQBwFnl4sLpD8yxXADokhYphAQaifIL
IronPort-HdrOrdr: A9a23:avUB6qM1yWIg/sBcTtijsMiBIKoaSvp037B87SBMoH1uE/Bw+P
 rEoB1273XJYVUqNk3I++rtBEDaewK+yXcd2+B4AV7IZmbbUQWTQb1f0Q==
X-Talos-CUID: 9a23:AhA/kGEHeoXQ+xkHqmJuykosI9sLeUeB917Lc22/KXRrFZCsHAo=
X-Talos-MUID: 9a23:NqDwWgUAHa4RmX3q/A/QlAhQL+Bk2PWNNkQWsZkl+OmpbzMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.13,222,1732579200";
   d="scan'208,217";a="287742428"
X-IronPort-AV: E=Sophos;i="6.13,222,1732579200";
   d="scan'208,217";a="259772783"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=jk006am67I8SFkeQq8fGBFp40Te71A3HBdBubbkpwMVfbm8CXCkbbxabfTsFr/cGyqt9CVJGQ5uJT75XT/ndafO2xvQJUgwQX6uKouqeIeBPlPcyCqKhXoBMzQ2D+ltPpCKmSdB9n0QyxGtsD/g8vQaqDyiN9HyiPHAoG/xrqqDvGgCKW4FGszKg4730XkVPYTvij8TawhJQVN0KRLf384MvSCVfS1Q5dH8T0DsxiuBzFR2/C2yqWcmkUb2092AjsZV3oR51EoGXyLsj7y89Mm/WrOK7agKExv69hlqDDOinWt0gRRFQ3BPge1f6PWDIegSOTPa8JtK1ijttqP9Lbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/9NkBO8JD24cuE1YgUF2ejokdxsXFy6kdUq5LDFDdE=;
 b=vOJe1LBAcIlX6x10fisSLN2wuHEC7o7fSo0+Tg2WjpqdunJRgpWk6JZqTmfEYe6EpKdGzvyMfiS03/tEyXmcWVZUxHpp1qiQ7MIucNncLvxAoFyvvkF9nVFjmM5HXGHQhR54WX/ofift0z6LX3paphsC1e1copC+iwp1OkAbifD/KXIswcHbGFMQ2e88WdVwz12mG4d1dPDnr28xdI2XCe+/0KEjdMAyu23u/bEyoe+cH7RuvuYE+60otcOIjT45eSBP1HCmth6SD+uyCgfZV8kcrMudub1GveSE4GCMJ5ZRhXHz+/5/iDGmDF/G5Owfm1JZlo5vcROxsGXeXpWtQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
From: "Pallotta, Jeremy M (US)" <jeremy.pallotta@baesystems.us>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 benchmark_rate underrun at 50MSps
Thread-Index: AdtsCdB7+NQ7Lm2NRkOL9o5pHX0RcQ==
Date: Tue, 21 Jan 2025 13:39:44 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN5P110MB0831:EE_|SN5P110MB0669:EE_
x-ms-office365-filtering-correlation-id: adab031c-f05c-4d61-ef1d-08dd3a2110ea
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|8096899003|38070700018|80162021;
x-microsoft-antispam-message-info: =?us-ascii?Q?69Q2hZlVGwa1DpQ37fvQsJ7Os33ARCT1H5R5CCdmXYXwETLrgncIJIbfpKle?=
 =?us-ascii?Q?TazY2/qnwEw7z9b2zpLLdKf6BIVB89yT4LZyCOPHQZmgLfZnhjD0VEVWLVon?=
 =?us-ascii?Q?LGNpLaYWTX6JTzoZIkJJKzYifCmjgc0v0vyFWvwE1bYjz9QEHr6NVAaUVlZN?=
 =?us-ascii?Q?lC7+yEqNPgbs+qwNrgnnA8UlUnlN3ubt/UayobOgyOoZqciZ2edVmA/C2Oyq?=
 =?us-ascii?Q?7Tqr/k5250N0jONF6nzIRuxTF9Htf2Zxxf4LlbJWj8pq7Np9DVhWz3TjwLu4?=
 =?us-ascii?Q?2dJYj+KFyTYqJGmm0SmLShN7V7Via3GQaIqCSf/WLE5z+C652oqIJhqFPptx?=
 =?us-ascii?Q?0AGwvvE1Zsn6hnYkgU/0edzSIytNUyVftXQ2fadLW6tDqPKwQhiFrqceCGc9?=
 =?us-ascii?Q?R7GJzfsOVHiOzgT6zPvnZgdYZTAueHMRLxuoZ6PuJTAdxTeR1Y6mRAVXjhA/?=
 =?us-ascii?Q?P9rg6ul71TH4U0bCBW2qwCkzhHkEjMz0pGmCYaQ88MpLrOR2xOIpLpCSu+X/?=
 =?us-ascii?Q?GxhXgvBtg75L+wxJLyZK0WeLFW0iYwoXbfyup9BGYQ4Tlf/h2WghC8n3+I1x?=
 =?us-ascii?Q?1BajQGd1t6OKCv6boHgAznHnx7MgzAUInRGsdeIfT5ZMreRJ26c1Wn5WUmKL?=
 =?us-ascii?Q?53k+QfmINjPXmbFtMGxh+1MQkTIYU3mEvcv+wEw00uIqidiTjwgJ6hTcE3VQ?=
 =?us-ascii?Q?WoihHb2JMG7t6rl6GkvrmYdfrmci8m0qqxL3Os9WD7qPh2xPODsGRtdfzbDQ?=
 =?us-ascii?Q?djwF490wiqqTtWTFk3FPPJPrEQiJe87KibJX0KT26dm43exPWNz92FOHK/de?=
 =?us-ascii?Q?cscd1FC7yVM0hZtLf/46UL9beNOiUvuXyTqmvSDzNN7pX8f2zVFgsrZCeQ6A?=
 =?us-ascii?Q?I7u8yGD/tE7RZkSGhFRlpPKgG9tkyfPeqHiH/EFUiBtIj6t1eS3E5tysq08P?=
 =?us-ascii?Q?c5GTKSpG8v+yuIxwtTHKno+45Ul7CXH6L8TSRo/4TNmoypPkDEULY7fTeXEN?=
 =?us-ascii?Q?eEGOKvOCHb+oabjDjkE+8ZoTNZBlPmPIOqYbuJxu9RoAGekoHyHTvgk23+0I?=
 =?us-ascii?Q?LQpWjLkG48oRP5/nD28voAqa4WSncxFve0pFk/UzOlUydU5B8/muJTR+zE0c?=
 =?us-ascii?Q?wJDitqttuOfabb9ZhgpKAvV90q7x6k9ZElWnTx8DK96SEYnVWWFx+YZTksh3?=
 =?us-ascii?Q?IooAcxnhFR45R5ol/MG3g7nqrOnBVU99z7fixe0ODibvpUvERxeHenFXCUfN?=
 =?us-ascii?Q?ynDB4crFNpOaoSU6D9Va+0LjNlqgHH/8jFRIgMD7i+3TACayOwzpvMpJLRJV?=
 =?us-ascii?Q?xk0pUmT0CEPUwr0YFSi7ChtotHR6ip7xfpySUj4068uS5YwHI2R/0DDo9BVs?=
 =?us-ascii?Q?o0rA++oeOlr4+i5OsPgUCDE66VOwOYKQ9Ajc/rXcXv9TTJo9efjq5XAEZ/kV?=
 =?us-ascii?Q?/3nqvaBoYB4qOVscGa3HJfj7Wk5UnQDwWuoPRVX2mDYMwUfrXim4oQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN5P110MB0831.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(8096899003)(38070700018)(80162021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2mq1urwgD2mFB8tDri25bxAdLMy+bFlfkP2NG008MRUK8XuIIg7hczl4/Gp8?=
 =?us-ascii?Q?EcEm1BR4Nd1Wn+/Bw79rpkkfoPTui7x/dHoAaG4cQPVQZ2KLYePmbt+tAjT0?=
 =?us-ascii?Q?ePXrwv8DDFOqITRQkTA4k+e11u7VjKqUHTog6qafaO80oAOQjcMssrr3kibn?=
 =?us-ascii?Q?45WKFap9jLirzzz7V3obMUKfYDXbXet2EhmO7XOEDMlUZASv85/6uFmj/0FX?=
 =?us-ascii?Q?CWHPkSkkGadz74tHejC4Ass3iuMq1SSlxEAKFYf3Fb6SlmincRLsWUJpDW42?=
 =?us-ascii?Q?3xpbR8pNyljb9h3FXNsX6ZIgcVmLVn7SGW2wT3z0n/yO1G7kxoVVfdtitI2C?=
 =?us-ascii?Q?mQSPRcg1DIK5PTik0wvYMDUjIuBmRWHVMpyGGmSj68yjUBN//bZWQa+2wvEF?=
 =?us-ascii?Q?8WofnKlOQ2G/EAh702QzQSzDjUkUD9Q73XCKVOIRpooauh5LqSqjrKaTivRW?=
 =?us-ascii?Q?DuDdM50nMhSY42lll6zpsPBcYurf+Tq2l3laXx8BUvk5QdriYn/UPj1vw4sU?=
 =?us-ascii?Q?UuKVzXsi0/dO7fsFAhePjUbH5a9J+43sq7HF2GkY0SWGKTY2ydZvhZvJ2AHP?=
 =?us-ascii?Q?Bf3JQ/DyPui3Mr3O0cDEVG+VHNm0YmOoVzd/vUIXhVrc1rv9ZFLvs45YL7hL?=
 =?us-ascii?Q?sDLwrOo+6Xw0XmFmm3zRPXZu4pKDKGnuvLi3pnq7lmaFBrSbuvq9qxOEwsRh?=
 =?us-ascii?Q?bQ0LDwkwazQSjEWbHc7gdZNx4IoIDa71qJMH5F4pKRwi1A6xlNxE8T2rG/lQ?=
 =?us-ascii?Q?Xr9HBmP/5sOKw+x58WWIRmJ1sV/NKZPTaccQmrR+J5w4Acv40WiwjPTAd0BS?=
 =?us-ascii?Q?HJ01d1OZBG1FSte2xl1d96CsP4m3ySaeFjwk9cEavy6zjKcIKFaPtrcN804d?=
 =?us-ascii?Q?frzbSeGtZvav1jyI+BqwUOmpCRyl/mHM8AWnexisFQw4Ppl8d3FJSLJoniML?=
 =?us-ascii?Q?VAejM6qjE6PTZj+KTSNjm84U9PIyGLnOGjbhPuRtP/be2zyUh3rsDs6Q0Dfg?=
 =?us-ascii?Q?l9u3D8PVHzlwY3ItpBXWU0G6LUT3DCS4224wyc1P7PiQgNfpEZMVIB+g2fRo?=
 =?us-ascii?Q?+++bvBxISLbBEj4iORjAcXvn7UPRzx3QciqfaOHFg8+DNf429MT8u4AER1PY?=
 =?us-ascii?Q?Zy8OM5G+qe6EcURzQFG4XZUjUzizNZs2TYv2Hw9VOER6mFEj8eiYAFWsMUXs?=
 =?us-ascii?Q?T3KbStm4cL6xOLUx3tjywCyCgCYFNBn0jLsXw/iAuLn6+rwuUereqbxveHJW?=
 =?us-ascii?Q?27b+8cwehfJMCz1KO7Neg1ZSoqbpPfBGffuWmctdH+DBWlfoSiZ526Nxq/fz?=
 =?us-ascii?Q?b0SPRXHrKq1qlvPMh7R1M/IGIpxtxDHhIF67qf7ZzU6NSCX04VN1/1qZMgJA?=
 =?us-ascii?Q?cQI6tsZ0nfrbDU+sMBH0eb+3SjmCFzn5B4lXv2sbbJSWAJZ32YPOjyXo9cU5?=
 =?us-ascii?Q?MJCFk+qjWAnSBfZN+5fJHXmyKgCGC+5H4UWdaO6l/XkC23ZbxcMQB3RAVtEX?=
 =?us-ascii?Q?FYTB8kWj+mtHnALwTWoZpDoYOcNg1Fy5lfZh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN5P110MB0831.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: adab031c-f05c-4d61-ef1d-08dd3a2110ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 13:39:44.8441
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN5P110MB0669
X-OriginatorOrg: baesystems.us
Message-ID: <173746679091.18916.10611555075223780663@mm2.emwd.com>
Message-ID-Hash: LL25BFWOZ54EI6HLAFZI36TF4RJC5WA4
X-Message-ID-Hash: LL25BFWOZ54EI6HLAFZI36TF4RJC5WA4
X-MailFrom: jeremy.pallotta@baesystems.us
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 benchmark_rate underrun at 50MSps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LL25BFWOZ54EI6HLAFZI36TF4RJC5WA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5345180234471049022=="

--===============5345180234471049022==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN5P110MB0831828CE2CA6A4D38BFC431FFE6ASN5P110MB0831NAMP_"

--_000_SN5P110MB0831828CE2CA6A4D38BFC431FFE6ASN5P110MB0831NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am running into underflow issues when running the benchmark_rate test on =
a x410.  The command I am running is the following:



./benchmark_rate --args=3D"addr=3D192.168.20.2,type=3Dx4xx,send_frame_size=
=3D8000,recv_frame_size=3D8000" --tx_rate=3D50e6 --tx_channels=3D0 --tx_del=
ay=3D1 --duration=3D60 --priority=3Dhigh --ref=3Dinternal



I have a 100Gbit interface connected to the x410 using the below ethernet c=
ard.



ca:00.0 Ethernet controller: Mellanox Technologies MT2910 Family [ConnectX-=
7]



I'm running on Ubuntu 22.04.5 LTS with kernel 6.8.0-40-generic.



I've confirmed that the priority=3Dhigh setting is working.  "top" shows th=
e priorities of all the threads have been elevated.



I've also updated a number of network settings.



sysctl -w net.core.wmem_max=3D250000000
sysctl -w net.core.rmem_max=3D250000000
sysctl -w net.core.wmem_default=3D250000000
sysctl -w net.core.rmem_default=3D250000000
ethtool -G ens8f0np0 tx 8192 rx 8192



The application outputs the following:



[INFO] [UHD] linux; GNU C++ version 8.4.0; Boost_108300; UHD_4.6.0.HEAD-0-g=
50fa3baa
[00:00:00.000277] Creating the usrp device with: addr=3D192.168.20.2,type=
=3Dx4xx,send_frame_size=3D8000,recv_frame_size=3D8000...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3289B1C,name=3Dni-x4xx-3289=
 B1C,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2,send_frame_size=3D80=
00,recv_frame_size=3D8000
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,mg=
mt_addr=3D192.168.20.2,name=3Dni-x4xx-3289B1C,product=3Dx410,recv_frame_s i=
ze=3D8000,send_frame_size=3D8000,clock_source=3Dinternal,time_source=3Dinte=
rnal,initializing=3DTrue'.
Using Device: Single USRP:
Device: X400-Series Device
Mboard 0: x410
RX Channel: 0
RX DSP: 0
RX Dboard: A
RX Subdev: 0
RX Channel: 1
RX DSP: 1
RX Dboard: A
RX Subdev: 1
RX Channel: 2
RX DSP: 2
RX Dboard: B
RX Subdev: 0
RX Channel: 3
RX DSP: 3
RX Dboard: B
RX Subdev: 1
TX Channel: 0
TX DSP: 0
TX Dboard: A
TX Subdev: 0
TX Channel: 1
TX DSP: 1
TX Dboard: A
TX Subdev: 1
TX Channel: 2
TX DSP: 2
TX Dboard: B
TX Subdev: 0
TX Channel: 3
TX DSP: 3
TX Dboard: B
TX Subdev: 1

[00:00:02.516914784] Setting device timestamp to 0...
[WARNING] [0/DUC#0] The requested interpolation is odd; the user should exp=
ect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.

[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate is =
49.152 MHz
[WARNING] [0/DUC#0] The requested interpolation is odd; the user should exp=
ect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.

[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate is =
49.152 MHz
[WARNING] [0/DUC#1] The requested interpolation is odd; the user should exp=
ect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.

[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate is =
49.152 MHz
[WARNING] [0/DUC#1] The requested interpolation is odd; the user should exp=
ect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.

[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual rate is =
49.152 MHz
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Setting TX spp to 1992
[00:00:02.522008533] Testing transmit rate 49.152000 Msps on 1 channels
UUUUUUUUUUUUUUUUUUUUUUU[00:01:03.524365256] Benchmark complete.

Benchmark rate summary:
Num received samples: 0
Num dropped samples: 0
Num overruns detected: 0
Num transmitted samples: 2948209800
Num sequence errors (Tx): 0
Num sequence errors (Rx): 0
Num underruns detected: 23
Num late commands: 0
Num timeouts (Tx): 0
Num timeouts (Rx): 0

Done!



Does anyone have any other suggestions for what could be tried to avoid the=
 underruns?  With a 100Gbit/s NIC, I should have plenty of network throughp=
ut.


--_000_SN5P110MB0831828CE2CA6A4D38BFC431FFE6ASN5P110MB0831NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p style=3D"margin:0in;background:white"><span style=3D"font-size:12.0pt;fo=
nt-family:&quot;Helvetica&quot;,sans-serif;color:#333333">I am running into=
 underflow issues when running the benchmark_rate test on a x410.&nbsp; The=
 command I am running is the following:<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">./benchmark_rate --args=3D&quot;addr=3D192.168.20.2,type=3Dx4xx,sen=
d_frame_size=3D8000,recv_frame_size=3D8000&quot; --tx_rate=3D50e6 --tx_chan=
nels=3D0 --tx_delay=3D1 --duration=3D60 --priority=3Dhigh --ref=3Dinternal<=
/span><span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,san=
s-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I have a 100Gbit interface connected to the x410 using the=
 below ethernet card.<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">ca:00.0 Ethernet controller: Mellanox Technologies MT2910 Family [C=
onnectX-7]</span><span style=3D"font-size:12.0pt;font-family:&quot;Helvetic=
a&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I'm running on Ubuntu&nbsp;22.04.5 LTS with kernel&nbsp;6.=
8.0-40-generic.<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I've confirmed that the priority=3Dhigh setting is working=
.&nbsp; &quot;top&quot; shows the priorities of all the threads have been e=
levated.<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I've also updated a number of network settings.<o:p></o:p>=
</span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">sysctl -w net.core.wmem_max=3D250000000</span><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">sysctl -w net.core.rmem_max=3D250000000</span><span style=3D=
"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#33333=
3"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">sysctl -w net.core.wmem_default=3D250000000</span><span styl=
e=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#3=
33333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">sysctl -w net.core.rmem_default=3D250000000</span><span styl=
e=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#3=
33333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">ethtool -G ens8f0np0 tx 8192 rx 8192</span><span style=3D"fo=
nt-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">=
<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">The application outputs the following:<o:p></o:p></span></=
p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[INFO] [UHD] linux; GNU C++ version 8.4.0; Boost_108300; UHD_4.6.0.=
HEAD-0-g50fa3baa</span><span style=3D"font-size:12.0pt;font-family:&quot;He=
lvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[00:00:00.000277] Creating the usrp device with: addr=3D192.=
168.20.2,type=3Dx4xx,send_frame_size=3D8000,recv_frame_size=3D8000...</span=
><span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-ser=
if;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[INFO] [MPMD] Initializing 1 device(s) in parallel with args=
: mgmt_addr=3D192.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3289B1C,name=
=3Dni-x4xx-3289 B1C,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2,send_=
frame_size=3D8000,recv_frame_size=3D8000</span><span style=3D"font-size:12.=
0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[INFO] [MPM.PeriphManager] init() called with device args `f=
pga=3DUC_200,mgmt_addr=3D192.168.20.2,name=3Dni-x4xx-3289B1C,product=3Dx410=
,recv_frame_s ize=3D8000,send_frame_size=3D8000,clock_source=3Dinternal,tim=
e_source=3Dinternal,initializing=3DTrue'.</span><span style=3D"font-size:12=
.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Using Device: Single USRP:</span><span style=3D"font-size:12=
.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Device: X400-Series Device</span><span style=3D"font-size:12=
.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Mboard 0: x410</span><span style=3D"font-size:12.0pt;font-fa=
mily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Channel: 0</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX DSP: 0</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Dboard: A</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Subdev: 0</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Channel: 1</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX DSP: 1</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Dboard: A</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Subdev: 1</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Channel: 2</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX DSP: 2</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Dboard: B</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Subdev: 0</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Channel: 3</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX DSP: 3</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Dboard: B</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">RX Subdev: 1</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Channel: 0</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX DSP: 0</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Dboard: A</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Subdev: 0</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Channel: 1</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX DSP: 1</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Dboard: A</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Subdev: 1</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Channel: 2</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX DSP: 2</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Dboard: B</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Subdev: 0</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Channel: 3</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX DSP: 3</span><span style=3D"font-size:12.0pt;font-family:=
&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Dboard: B</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">TX Subdev: 1</span><span style=3D"font-size:12.0pt;font-fami=
ly:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[00:00:02.516914784] Setting device timestamp to 0...</span><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color=
:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[WARNING] [0/DUC#0] The requested interpolation is odd; the =
user should expect passband CIC rolloff.</span><span style=3D"font-size:12.=
0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Select an even interpolation to ensure that a halfband filte=
r is enabled.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual =
rate is 49.152 MHz</span><span style=3D"font-size:12.0pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[WARNING] [0/DUC#0] The requested interpolation is odd; the =
user should expect passband CIC rolloff.</span><span style=3D"font-size:12.=
0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Select an even interpolation to ensure that a halfband filte=
r is enabled.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual =
rate is 49.152 MHz</span><span style=3D"font-size:12.0pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[WARNING] [0/DUC#1] The requested interpolation is odd; the =
user should expect passband CIC rolloff.</span><span style=3D"font-size:12.=
0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Select an even interpolation to ensure that a halfband filte=
r is enabled.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual =
rate is 49.152 MHz</span><span style=3D"font-size:12.0pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[WARNING] [0/DUC#1] The requested interpolation is odd; the =
user should expect passband CIC rolloff.</span><span style=3D"font-size:12.=
0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Select an even interpolation to ensure that a halfband filte=
r is enabled.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:#=
333333">[WARNING] [MULTI_USRP] Could not set TX rate to 50.000 MHz. Actual =
rate is 49.152 MHz</span><span style=3D"font-size:12.0pt;font-family:&quot;=
Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skip=
ping.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quo=
t;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Setting TX spp to 1992</span><span style=3D"font-size:12.0pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">[00:00:02.522008533] Testing transmit rate 49.152000 Msps on=
 1 channels</span><span style=3D"font-size:12.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">UUUUUUUUUUUUUUUUUUUUUUU[00:01:03.524365256] Benchmark comple=
te.</span><span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;=
,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Benchmark rate summary:</span><span style=3D"font-size:12.0p=
t;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num received samples: 0</span><span style=3D"font-size:12.0p=
t;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num dropped samples: 0</span><span style=3D"font-size:12.0pt=
;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num overruns detected: 0</span><span style=3D"font-size:12.0=
pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num transmitted samples: 2948209800</span><span style=3D"fon=
t-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><=
br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num sequence errors (Tx): 0</span><span style=3D"font-size:1=
2.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num sequence errors (Rx): 0</span><span style=3D"font-size:1=
2.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num underruns detected: 23</span><span style=3D"font-size:12=
.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num late commands: 0</span><span style=3D"font-size:12.0pt;f=
ont-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num timeouts (Tx): 0</span><span style=3D"font-size:12.0pt;f=
ont-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Num timeouts (Rx): 0</span><span style=3D"font-size:12.0pt;f=
ont-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p></o:p></spa=
n></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"><br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;=
color:#333333">Done!</span><span style=3D"font-size:12.0pt;font-family:&quo=
t;Helvetica&quot;,sans-serif;color:#333333"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;box-sizing: border-box;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-t=
ext-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-st=
yle: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:12.0pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Does anyone have any other suggestions for what could be t=
ried to avoid the underruns?&nbsp; With a 100Gbit/s NIC, I should have plen=
ty of network throughput.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN5P110MB0831828CE2CA6A4D38BFC431FFE6ASN5P110MB0831NAMP_--

--===============5345180234471049022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5345180234471049022==--
