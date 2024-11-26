Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8ED9D9A94
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 16:44:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4709385AEB
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 10:44:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732635875; bh=MrieimvwhtZP4CjNdiZeCf9sglj+jMH+T2BGmyZ2/mA=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xYfsccevb4EwTAQ7jra4Wus/Ru0V3z1uxoe4aalSNh9njiUcHPeeke7yITdqa/pp0
	 +3/7UcIuW3cgd1RjcFLXfRzoFRpSHoC7I7n2hkEMtmVJwxF6nkkAT8vLYiCzX9ueby
	 jf3+qTfiqvwOHkjNqZP8RmNDDdXh79F/sP/F1XYDkyRSeHjgyVM86s7SLMM4PCmU+q
	 vYRk4hO6lRjPKQJtONBf/Cb3tkf+Nmy2QIryM64IwKGBNg5Or95BG8WNEiWOmvG6Lq
	 ZUpqVYw/433lu5ajdcWz2tucqkcGCowN4gO7QUuR2gA8eRsZZ50vQVuyxvG8TCLrpe
	 bqYBQZYT3v3zQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mm2.emwd.com (Postfix) with ESMTPS id 79FE83856AB
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 10:44:15 -0500 (EST)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-71a3da16d58so6793626a34.3
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 07:44:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732635855; x=1733240655;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oyVZ9ImngwH2vw11U0blrPhmOLc1uDmqzZJQgWEmfTE=;
        b=rY/4i5LyW5YNhtATjsUP6ih8n1KXfcT3/o/SEAmbnDdqXVozN9rwZE29lTQ+sIDy4g
         GGL2QJZzi1abFolgxLFothXlEtS1gQh0gQj4RGp/zLybPJnguL9RLFG5Dq1LELhiWoO+
         UjPzQrMSOyepRLe0XiVc92OK7pSCf/NT/QmBapEMZgvCSsg5AzUEFRYXH+kpNPZwQqYu
         ISeeGPklyvfwWF75rx4KwEfa7PV7nSfy62ISf4on5oKKSNxV+eFOqydNTyk79Ql7c5UQ
         r084hE9Y5vndZXyqc1FtRd7Pyd5uhfCdY/HqeQDilCXd2swH2BgOsVwXHdLgKza1uubY
         UZhQ==
X-Gm-Message-State: AOJu0YwjWDwhC1LDTh5qpYTYhEHRum/nn4sa1CMehS7wKrfD8rKSL8NN
	cOUWDdTOhh5vdCa0TcFYz9BUHe2BmEOwVDbhZQ6Q7YDJGI7ydkumn7GpQLb1GJH0MRe5Fuv41V+
	FrN6j1ci1BJka1ALiAQ72R8xlzNUUFRS5NsAknXftv23ApHwy+mKwEolU7peb1KSJPeImDQ==
X-Gm-Gg: ASbGncsHDWVxAwjIL/16u36Z3O1PcDCzg7YqXkTKBLgeOp5FI32zkGD2lqPV/uB4Cth
	9XoPvwiOuk0CPAg==
X-Google-Smtp-Source: AGHT+IFkU/Jc8vdFtKzC9GfZtTktf4JIkiiotoHhfVKTJCGqfDxLF1FtBDnnbsZTw8QWKXPQtjASUn1oDQkKLFcseKnc7mAhby9kdA==
X-Received: by 2002:a05:6358:723:b0:1ca:a872:e461 with SMTP id e5c5f4694b2df-1caa872e569mr258347155d.3.1732635854755;
        Tue, 26 Nov 2024 07:44:14 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 16:18:35 +0100
Message-ID: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
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
Content-Type: multipart/mixed; boundary="===============8008507263919522737=="

--===============8008507263919522737==
Content-Type: multipart/alternative; boundary="000000000000e9fe1a0627d25c04"

--000000000000e9fe1a0627d25c04
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

--000000000000e9fe1a0627d25c04
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

--000000000000e9fe1a0627d25c04--

--===============8008507263919522737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8008507263919522737==--
