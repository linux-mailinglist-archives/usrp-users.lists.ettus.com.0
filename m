Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D302205B19
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 20:46:58 +0200 (CEST)
Received: from [::1] (port=53200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnnwd-0003KS-34; Tue, 23 Jun 2020 14:46:55 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:38734)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jnnwY-0003Du-Qy
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 14:46:50 -0400
Received: by mail-ed1-f49.google.com with SMTP id cy7so10639402edb.5
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 11:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5E9LGO+QQ3QUrycgmAQd+rrwIl9dewYwV0HgVzbyEYI=;
 b=UHiuoCLlnd5aUUIy745xcvGDEt4M5GuNezMkRo+0q5uHZWYrpAqgh6w9cSElzDCrTr
 Sj8ETq1jYs/ruy+SDLV91hPbt5TcYYRjGgj5yLvOCGRl9shTfar8y/6weuLO3F3ZpVZN
 m32j/1lzhz7K5BTcj4toVarrFbnyBqHSs44kVAtzSU2IpEuiG49rWDrabaMDq7JSU3vX
 FSYBnYVZIq0OWBCJsShPhP118vYUWYx8NG9BmtFAHcoTIpqWjOG59FSfth1xOvZuQ/0j
 SRU3840laFuJOFPgadtucn/tyYpygG4VmAgIW+ShY26D5YAJYqoloSD6oK+7kwsSATYN
 4rtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5E9LGO+QQ3QUrycgmAQd+rrwIl9dewYwV0HgVzbyEYI=;
 b=qdHdBrQXYt8KXTN2YlHRQ+d/aT70rfIYYhpmurevcDry8HwfFViyws0ivv+Dix6BV3
 Plpb+vaFL9BS8nmgIVm8X5hH5Wyjhaw12oUies9cSp0ljM8PW3WjehLwBrsAZRV5MuFT
 +QMvvdBDbmBlnmlcrY7PuKzIYx2BW+tr9Lh/7gCItWpHXwf7swPGif+z/Nm3rJgMLkMS
 iemiLz9h673mSL4KDk6tdnTt7swAeBJ9HMnddI/EWYuWLyXtZ1Ifgn78WMKxjZP9BggF
 ZcneEcGXvfL+NGF3HwMWe4zVZNZZ2gTKAte6t2hYpSxZTXSvyzs7o3L8iY1FLGwczIky
 i+Ag==
X-Gm-Message-State: AOAM530NCYnWcQhfAiltTUGab2WUtKV3CuFu8Vfflw+OqhpNK7Xt2jas
 sJYuY0doJaZ6dkG6GPPDmFSHZDwpfeMoKecqEnblAw==
X-Google-Smtp-Source: ABdhPJzlZSa+dnqCSgWdhNk08TIcLAkVBgYH+ZZPJd1OHtdpR9Smgpv4s9Owch+H83+XaDGKNKFM5CfmE5lA0H2OR1Y=
X-Received: by 2002:a50:ba8b:: with SMTP id x11mr23778901ede.201.1592937969499; 
 Tue, 23 Jun 2020 11:46:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 12:45:58 -0600
Message-ID: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] 10 MHz Reference Initial Phase in the X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============6243059346491108295=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6243059346491108295==
Content-Type: multipart/alternative; boundary="000000000000d2440405a8c4c5c9"

--000000000000d2440405a8c4c5c9
Content-Type: text/plain; charset="UTF-8"

Hello,

I am attempting to release a transmission from an X310 every second. To
accomplish this, I must measure, and calibrate the delay in the RF front
end of the radio for my chosen sample rate. I'd like the transmission to be
released within 1 clock cycle of the rising edge of the PPS.

I am feeding the X310 an external 10 MHz reference and 1 PPS, which are
produced by the same source, and are being supplied to the radio with
matched cable lengths. The source is a GPS receiver and in my lab I have 2
different generations of the GPS receiver.

While calibrating the front end transmit delay I noticed a discrepancy in
the radio timing between the separate GPS receiver generations. The 1st
generation of GPS receiver is 50 ns different than the calibration for the
2nd generation. When I look at the 1 PPS and 10 MHz output on a scope, I
noticed that in the 1st generation the PPS occurs at the top of a 10 MHz
cycle, and in the 2nd generation it occurs at the bottom of a 10 MHz cycle.
Half a cycle at 10 MHz is 50 ns. I suspect this is not coincidence because
I have now tested 6 different GPS receivers, 3 of gen 1 and 3 of gen 2, and
all 3 gen 1 calibrations are the same and they are 50 ns different from the
gen 2 calibrations.

Is this the expected behavior? Or is there a bug in the X310 code that
handles timing? I have never worked on hardware, but I would not expect the
initial phase of a 10 MHz reference to impact absolute time.

Thanks for your help!

--000000000000d2440405a8c4c5c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am attempting to re=
lease a transmission from an X310 every second. To accomplish this, I must =
measure, and calibrate the delay in the RF front end of the radio for my ch=
osen sample rate. I&#39;d like the transmission to be released within 1 clo=
ck cycle of the rising edge of the PPS. <br></div><div><br></div><div>I am =
feeding the X310 an external 10 MHz reference and 1 PPS, which are produced=
 by the same source, and are being supplied to the radio with matched cable=
 lengths. The source is a GPS receiver and in my lab I have 2 different gen=
erations of the GPS receiver.</div><div><br></div><div>While calibrating th=
e front end transmit delay I noticed a discrepancy in the radio timing betw=
een the separate GPS receiver generations. The 1st generation of GPS receiv=
er is 50 ns different than the calibration for the 2nd generation. When I l=
ook at the 1 PPS and 10 MHz output on a scope, I noticed that in the 1st ge=
neration the PPS occurs at the top of a 10 MHz cycle, and in the 2nd genera=
tion it occurs at the bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 5=
0 ns. I suspect this is not coincidence because I have now tested 6 differe=
nt GPS receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1 calibrations a=
re the same and they are 50 ns different from the gen 2 calibrations.</div>=
<div><br></div><div>Is this the expected behavior? Or is there a bug in the=
 X310 code that handles timing? I have never worked on hardware, but I woul=
d not expect the initial phase of a 10 MHz reference to impact absolute tim=
e. <br></div><div><br></div><div>Thanks for your help!<br></div><div><br></=
div><div><br></div></div>

--000000000000d2440405a8c4c5c9--


--===============6243059346491108295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6243059346491108295==--

