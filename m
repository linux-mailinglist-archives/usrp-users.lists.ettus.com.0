Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4514A290E29
	for <lists+usrp-users@lfdr.de>; Sat, 17 Oct 2020 01:25:07 +0200 (CEST)
Received: from [::1] (port=54094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTZ5s-0003mi-Gj; Fri, 16 Oct 2020 19:25:04 -0400
Received: from mail-pl1-f174.google.com ([209.85.214.174]:35503)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <omar.aldana@performanceembedded.com>)
 id 1kTZ5n-0003iW-W0
 for usrp-users@lists.ettus.com; Fri, 16 Oct 2020 19:25:00 -0400
Received: by mail-pl1-f174.google.com with SMTP id 1so2077149ple.2
 for <usrp-users@lists.ettus.com>; Fri, 16 Oct 2020 16:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=performanceembedded.com; s=google;
 h=mime-version:date:from:subject:thread-topic:message-id:to
 :content-transfer-encoding;
 bh=qbPzIGu5/a2Iagn12VjTpVE18kMeJYuC83+ilPZdqBo=;
 b=FbaQHQFLzCIDCF/kaGUvwNjNvQ0iL/a2asd7hROtGfH/mLMaaLKDjJWhB4Bzpq10+P
 gTSFnG5wiEl2cRqRbxPwDd3VP4Lv2jwJopZ+eVwfBpv6WP1Pk9GalMjyUjrs90mY6Uet
 /wk46zu6izGN0LwnIp9L6aQNRdDdZlkuVe1Zr6Kih8CpbZ0Aciz0+F9+Hv6x8OhmLuGJ
 bR1CTmmWWcs7/UIZhVWIA+Q6va61HjHVJLM7t32qts8+iic2/Jh9WVXBfA0l+vcRV46z
 06HocbICbg00FZKgG5d8uZ+eBiz5JrqRltyD5HwxE4y5b2xC4B1D3uLQqFI23H60cg4I
 21Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:from:subject:thread-topic
 :message-id:to:content-transfer-encoding;
 bh=qbPzIGu5/a2Iagn12VjTpVE18kMeJYuC83+ilPZdqBo=;
 b=ZxtDyrrGMkkBZ3xGDcoQAzORjFFE9Jxc9blSi73VJMCBZ4foyHRRkf7tsw6WuhvYcC
 xS6d4kFlNEZWIsoyQtXCD2bbLRNUjIfkAxJgKwekN1cGgTPArf3DEYQx+jxNjFrRALDS
 TSD5JWegwEjsaYxQzePokmMvc+ti0Y18JV1xEeIYuWs8c75v9cb52D7sOYLyWbrYiuzg
 j/NUTzVTn2ModWdDAMVy5GyIO2EDJHmVFNMGUvY1blI2OeFPzoXYqqzZdtQllKcGFRM9
 WEhv6LCzVMHUV90rojelftT/64tgthmoHt/qmlrWjJXMDBO5t7kVLqx+3pQE2qosXTlE
 2GSg==
X-Gm-Message-State: AOAM531/GopUbjr4l1WU7touAfcrS7ei1rGh8MPaNT539IYJnppgIy7D
 08m/EBIbznq+8lxQ5a9vipr1Axnaj+EdmA==
X-Google-Smtp-Source: ABdhPJzsLEw7bISoGCTjrH8dJExCj0g2T8RK7uAUdwSuhRPO8bgn08VUHJzyzowaeqgw9IrFFnIOVg==
X-Received: by 2002:a17:902:7003:b029:d4:e2c6:948f with SMTP id
 y3-20020a1709027003b02900d4e2c6948fmr6471588plk.65.1602890658262; 
 Fri, 16 Oct 2020 16:24:18 -0700 (PDT)
Received: from smtp.gmail.com (cpe-76-170-100-250.socal.res.rr.com.
 [76.170.100.250])
 by smtp.gmail.com with ESMTPSA id h2sm3980506pjv.4.2020.10.16.16.24.17
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Oct 2020 16:24:17 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 16 Oct 2020 16:24:15 -0700
Thread-Topic: UHD 4.0.0.0
Message-ID: <F8945B71-33B6-456E-9B47-1698821C25A5@hxcore.ol>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD 4.0.0.0
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
From: Omar Aldana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Omar Aldana <omar.aldana@performanceembedded.com>
Content-Type: multipart/mixed; boundary="===============7108247351013268796=="
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

--===============7108247351013268796==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
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
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US><div class=3DWordSection1><p class=3DM=
soNormal>I=E2=80=99m working to setup my E320 in network mode and need to m=
atch UHD versions on the host machine and the E320. The latest UHD version =
on GitHub is 4.0.0.0. However, after performing a file system update on the=
 E320, the E320 is still running UHD version 3.15.0.0. Should I revert my h=
ost version to UHD 3.15.0.0?</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p style=3D'margin:0in'>root@ni-e320-31ED908:~# cat /etc/mender/artifact_inf=
o<o:p></o:p></p><p style=3D'margin:0in'>artifact_name=3Dv3.15.0.0_e320<o:p>=
</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p></div></body></html>=



--===============7108247351013268796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7108247351013268796==--
