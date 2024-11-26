Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA19D9A4E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 16:19:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7DAB385B3E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 10:19:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732634351; bh=E+f4iASlp7m0f+btJxij+XK9SMnS2CO5RVXVAZTQmj0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IqKdIjRN1sNQLC+MRQl40OncnhteOiZIH4sPxpGUw0iauGVM/79oREPn6BvcTJFtY
	 uU/3+TNld+Oe/JcZVm9zp1G53gkRq/37tYioIUapUQunezAB9Ryfn1NpQ8eJ5JR7VW
	 fx8utk53GzXK6O+QlI2Wt5OrJGiWWRISUFxuZUtH9L3C1u/fFhFj2UvpXBc8WnOYRW
	 yAO4jxIv/JifqdrXL2MX/5vkQt5dTCp2Y0yeKRp5xe9GmjN3XOshdKiNT9phUTX1ev
	 GFVsnek+bLw9RVuNVnvSUUfGZhvbNss10p0L2nOn2bHwDwg515+OF4w3vHwHaDjp+W
	 eMUe3oY2D8Muw==
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F8D0385069
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 10:18:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="nn6h840k";
	dkim-atps=neutral
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-841a565f871so68461039f.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 07:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1732634326; x=1733239126; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/UjeHmRon5B5wj6UtkOl4oI16gAZ3Yir+tTDZQ0EgmA=;
        b=nn6h840kxlpPGKfsr2b4e0DTpsvbO5XANCFbCZ1eIqWG4Bl0/pcT6LbDAj6UP/ebWn
         QeDOKkNtTxH1mccreqfavcrzNLn043negoPJu+avp9jdFeWyjhfSvm9a8KdISJrzoB6S
         XRMTXilu7pi+C7DcWNj+IBNC5zMbSKxXdjz3aGb+dyXLdgH7u0tBAM/AUufUZBjMwost
         2Dfpsel+72T8uuTOIqkVQtoV2ueq406lrMGGxZ9ziBVJgl9vZiM6TzSEMAz6KHxunfe/
         7tIPs3En8rn4X/qCKkplJbb+3UYUOcE0XBiNJfaGFMi92hPn+xY4eB0M8ZLkSBH2nqhv
         sQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732634326; x=1733239126;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/UjeHmRon5B5wj6UtkOl4oI16gAZ3Yir+tTDZQ0EgmA=;
        b=k34xJRuG8o5Fy0vZb+4N2Le1jGkJyGVacCpTG7GYX5Xf27u4arH93vGuRzCrJoGtKD
         4AcOivta6n2ethQ3hXaaU0aMKHBxFidb21iF5uTPBPBJTFwc3EH64MgzNQKbsMHR2yQS
         /xBw1lcgi27EbxyWYMaq++smsh3NN1dOKQHjtUFhEqgfWV/jX4BBxQRos5diSA/PYUXS
         +5nr4kV9yLWrwrRdpaTJfakX2oICTlKmgx5d9W0C+Da+n9JAijpb1yC5XDbmOyEZjaXK
         UaCCkXggy3EWMip37ixILP3D88AVET+HeBCYJSMjVCb8yjLiVrur4ytsefnu8GEd/23I
         ieZA==
X-Gm-Message-State: AOJu0YwFx1+OvwgZSCpkPF/JUubR4p3GnwrZbqnDq5zLR/Zcwz52iMNb
	Sf6zTeg9fO/Ay6cF0xae1z0viViukno1WUvvXUbWIn9qXPm3lB+aDFNwAbygutEhp4ZBEfEnVmE
	05t1jOxGkBs37lF0hMnqecy2jTSvxEOKHwugcGfviU6hoIM8PUBLCZg==
X-Gm-Gg: ASbGnctp7qce9al5knQuOcHQol6hLxBLMon1BKH7u8NyqyqU7KEHgv7xdr09eAsBjhV
	dZJaHELlBC3tbosTXsIijJO/2nNNot5E/
X-Google-Smtp-Source: AGHT+IGqrvfKbzzpdDXMrlKIkMPs05G76qVDAYwj/JCXw4IL3rpomouVC9z4VlJy3kmXS84F73BqsigNG5skRew0ZyY=
X-Received: by 2002:a05:6602:6c0a:b0:83a:b235:2d62 with SMTP id
 ca18e2360f4ac-83ecdc330e7mr1737776539f.1.1732634326050; Tue, 26 Nov 2024
 07:18:46 -0800 (PST)
MIME-Version: 1.0
From: Houshang <houshang.azizi@accelleran.com>
Date: Tue, 26 Nov 2024 16:18:35 +0100
Message-ID: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 62OBDCYJNXRDV5EMZV4OPL3EXQUI4O7X
X-Message-ID-Hash: 62OBDCYJNXRDV5EMZV4OPL3EXQUI4O7X
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62OBDCYJNXRDV5EMZV4OPL3EXQUI4O7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7489756234366572427=="

--===============7489756234366572427==
Content-Type: multipart/alternative; boundary="00000000000087cd0b0627d25d98"

--00000000000087cd0b0627d25d98
Content-Type: text/plain; charset="UTF-8"

Hello

I have following UHD version on my server:



*ad@bm-super11-intel:~/houshang$ uhd_config_info --versionUHD
4.7.0.0-0ubuntu1~jammy1ad@bm-super11-intel:~/houshang$ ssh root@10.10.0.100
<root@10.10.0.100>*

And the following UHD version on my n310:



*root@ni-n3xx-32000F1:~# uhd_config_info --versionUHD
4.7.0.0-0-ga5ed1872root@ni-n3xx-32000F1:~# *

They are the same and my n310 is updated with the following file:



*ad@bm-super11-intel:~/houshang$ md5sum
/usr/share/uhd/images/usrp_n310_fpga_HG.bit532b338d6861268c05a4fd9837ca80e5
 /usr/share/uhd/images/usrp_n310_fpga_HG.bitad@bm-super11-intel:~/houshang$
*

I am running srsRAN gNB on my server (*Commit 9d5dd742a*). A version of srs
of srsRAN that is compiled with *UHD 4.7.0.0.*


Here are the error messages I get:

















*==== gNB started ===Type <h> to view helpError: failed receiving packet.
RfnocError: OpTimeout: Control operation timed out waiting for ACK.Late:
2805; Underflow: 2238; Overflow: 0;Error: failed receiving packet.
RfnocError: OpTimeout: Control operation timed out waiting for ACK.Error:
failed receiving packet. RfnocError: OpTimeout: Control operation timed out
waiting for ACK.Late: 0; Underflow: 5; Overflow: 0;Error: failed receiving
packet. RfnocError: OpTimeout: Control operation timed out waiting for
ACK.Error: failed receiving packet. RfnocError: OpTimeout: Control
operation timed out waiting for ACK.Late: 0; Underflow: 4; Overflow:
0;Error: failed receiving packet. RfnocError: OpTimeout: Control operation
timed out waiting for ACK.Error: failed receiving packet. RfnocError:
OpTimeout: Control operation timed out waiting for ACK.Late: 0; Underflow:
4; Overflow: 0;Error: failed receiving packet. RfnocError: OpTimeout:
Control operation timed out waiting for ACK.Error: failed receiving packet.
RfnocError: OpTimeout: Control operation timed out waiting for ACK.Late: 0;
Underflow: 4; Overflow: 0;Error: failed receiving packet. RfnocError:
OpTimeout: Control operation timed out waiting for ACK.*


And obviously it is not working with this amount of errors.

Can anyone help me with this please? Is it a bug in the UHD version? Or is
there something I am missing here?

Thanks
Houshang

--00000000000087cd0b0627d25d98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>I have following UHD v=
ersion on my server:</div><br><i><span style=3D"background-color:rgb(238,23=
8,238)">ad@bm-super11-intel:~/houshang$ uhd_config_info --version<br>UHD 4.=
7.0.0-0ubuntu1~jammy1<br>ad@bm-super11-intel:~/houshang$ ssh <a href=3D"mai=
lto:root@10.10.0.100">root@10.10.0.100</a></span></i><br><br>And the follow=
ing UHD version on my n310:<br><br><i><span style=3D"background-color:rgb(2=
38,238,238)">root@ni-n3xx-32000F1:~# uhd_config_info --version<br>UHD 4.7.0=
.0-0-ga5ed1872<br>root@ni-n3xx-32000F1:~# </span></i><br><br><div>They are =
the same and my n310 is updated with the following file:</div><div><br></di=
v><i><span style=3D"background-color:rgb(238,238,238)">ad@bm-super11-intel:=
~/houshang$ md5sum /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>532b338d6=
861268c05a4fd9837ca80e5 =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit<b=
r>ad@bm-super11-intel:~/houshang$ </span></i><br><br>I am running srsRAN gN=
B on my server (<i><span style=3D"background-color:rgb(238,238,238)">Commit=
 9d5dd742a</span></i>). A version of srs of srsRAN that is compiled with <i=
><span style=3D"background-color:rgb(238,238,238)">UHD 4.7.0.0.</span></i><=
br><br><br>Here are the error messages I get:<br><br><i><span style=3D"back=
ground-color:rgb(238,238,238)">=3D=3D=3D=3D gNB started =3D=3D=3D<br>Type &=
lt;h&gt; to view help<br>Error: failed receiving packet. RfnocError: OpTime=
out: Control operation timed out waiting for ACK.<br>Late: 2805; Underflow:=
 2238; Overflow: 0;<br>Error: failed receiving packet. RfnocError: OpTimeou=
t: Control operation timed out waiting for ACK.<br>Error: failed receiving =
packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.=
<br>Late: 0; Underflow: 5; Overflow: 0;<br>Error: failed receiving packet. =
RfnocError: OpTimeout: Control operation timed out waiting for ACK.<br>Erro=
r: failed receiving packet. RfnocError: OpTimeout: Control operation timed =
out waiting for ACK.<br>Late: 0; Underflow: 4; Overflow: 0;<br>Error: faile=
d receiving packet. RfnocError: OpTimeout: Control operation timed out wait=
ing for ACK.<br>Error: failed receiving packet. RfnocError: OpTimeout: Cont=
rol operation timed out waiting for ACK.<br>Late: 0; Underflow: 4; Overflow=
: 0;<br>Error: failed receiving packet. RfnocError: OpTimeout: Control oper=
ation timed out waiting for ACK.<br>Error: failed receiving packet. RfnocEr=
ror: OpTimeout: Control operation timed out waiting for ACK.<br>Late: 0; Un=
derflow: 4; Overflow: 0;<br>Error: failed receiving packet. RfnocError: OpT=
imeout: Control operation timed out waiting for ACK.</span></i><br><br><br>=
And obviously it is not working with this amount of errors.<br><br>Can anyo=
ne help me with this please? Is it a bug in the UHD version? Or is there so=
mething I am missing here?<br><br>Thanks<br>Houshang<br></div>

--00000000000087cd0b0627d25d98--

--===============7489756234366572427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7489756234366572427==--
