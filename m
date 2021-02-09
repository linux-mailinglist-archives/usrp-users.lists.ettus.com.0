Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E763158B0
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 22:36:01 +0100 (CET)
Received: from [::1] (port=38798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9afs-0005kL-Uv; Tue, 09 Feb 2021 16:35:56 -0500
Received: from p-impout006aa.msg.pkvw.co.charter.net ([47.43.26.137]:58410
 helo=p-impout006.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l9afo-0005cd-5r
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 16:35:52 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 9af8lhWJ9FiZV9af9lfpJu; Tue, 09 Feb 2021 21:35:11 +0000
X-Authority-Analysis: v=2.3 cv=XINOtjpE c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=JyTMK7iCXUXvlezlpVoA:9
 a=QEXdDO2ut3YA:10 a=EH4er7UgLvvHlT2xw74A:9 a=hF7dFM0dETMYVVLG:21
 a=_W_S_7VecoQA:10
Message-Id: <6df26e992abae0bab093accea1d0baf2eb0ece70@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Tue, 09 Feb 2021 21:35:10 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfGFcm0whA9AgOs92RBorE0Mc7wu80oV8/qReyxmhT5z+kcb85okVi1AqzP9WQwur9wKbgDa2e9jyiTtgNn/tU+uFBLj8d+6+UqIymufaNIsfIIUYSgB0
 2f61GN7R//0OBHPAVaCNyLoOqZy32wUovWDdSN6pTAfGZnRuHp/w7D+v1ixO36jmnDMk3/+QZ+o1hQ==
Subject: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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
From: Dennis Trask via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dtrask1@tampabay.rr.com
Content-Type: multipart/mixed; boundary="===============3432707757707515577=="
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

--===============3432707757707515577==
Content-Type: multipart/alternative;
 boundary="=_c66be6483df5bbc24e24c4876167de12"

--=_c66be6483df5bbc24e24c4876167de12
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have re-imaged the SD card for my E310 with the v4.0.0.0 image. I=0Aca=
nnot figure out how to set a static IP address on eth0 at boot-up. I=0Ac=
reated an /etc/network/interfaces file that looks like this:=0Aauto eth0=
iface eth0 inet staticaddress 192.168.200.2netmask=0A255.255.255.0=0AI c=
an run the command "ifup eth0" and bring up the interface with the=0Ades=
ired configuration, but it does not initialize when I reboot.=0AThe SD i=
mage I am using was obtained with the command:=0Auhd_images_downloader -=
t e310 -t sg3=0AI built the uhd_images_downloder from source, and it's v=
ersion is=0A4.0.0.HEAD-0-g90ce6062.=0ADennis=0A

--=_c66be6483df5bbc24e24c4876167de12
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have re-imaged the SD card for my E310 with the v4.0.0.0 i=
mage. I cannot figure out how to set a static IP address on eth0 at boot=
-up. I created an /etc/network/interfaces file that looks like this:<div=
><br></div><div><div>auto eth0</div><div>iface eth0 inet static</div><di=
v>address 192.168.200.2</div><div>netmask 255.255.255.0</div></div><div>=
<br></div><div>I can run the command "ifup eth0" and bring up the interf=
ace with the desired configuration, but it does not initialize when I re=
boot.</div><div><br></div><div>The SD image I am using was obtained with=
 the command: uhd_images_downloader -t e310 -t sg3</div><div><br></div><=
div>I built the uhd_images_downloder from source, and it's version is&nb=
sp;4.0.0.HEAD-0-g90ce6062.</div><div><br></div><div>Dennis</div><div><br=
></div></body></html>

--=_c66be6483df5bbc24e24c4876167de12--



--===============3432707757707515577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3432707757707515577==--


