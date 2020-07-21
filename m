Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55119228381
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 17:20:58 +0200 (CEST)
Received: from [::1] (port=40806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxu4e-0002Um-4X; Tue, 21 Jul 2020 11:20:56 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:38307)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxu4a-0002K0-C1
 for USRP-users@lists.ettus.com; Tue, 21 Jul 2020 11:20:52 -0400
Received: by mail-qk1-f170.google.com with SMTP id e13so19638004qkg.5
 for <USRP-users@lists.ettus.com>; Tue, 21 Jul 2020 08:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Pwsau1qL8x8xbnu5ejE+F/gtg1RLOpZ6ENwDxoY2Yx4=;
 b=CFUfEdHDJgCCu/MuZAxVXC/8wa35wtGcWnMY7SXZgjyhHbG1G4Nq+uOgumzJ58jtlQ
 7/3aag92qchQ4+hk+ByyUrYu9RSRtKkujMJSJ1G63a74cCOw6XFgh50dOY/CiiupBWJ/
 SriFpkQlqM1vYqYDUpVowrsWiB8v+SLFVWKILLCFtefIRsDV93PwptcXb++DX4ho+HRN
 X2j0Db4zVKlXAk7HrG+Tam/oVJi2NDCH9/eRWq8jqlwHZMhu0qtgpHmz72f4D2pYtE7g
 wBvmV1Onv6U0eGmoBuE+cPYf9HDR1bW7kQG/F3JhyGidKgT26YBoyvb4g2oz93/oh91t
 TFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Pwsau1qL8x8xbnu5ejE+F/gtg1RLOpZ6ENwDxoY2Yx4=;
 b=pv360C3RKbVdCT+g1DabQJq/bj0Ib6DlTYaxmHJUNqsNtPKfZU/lIir+BcwHhs7x0t
 L58mc3ofXNe7afmT8fEdBuv9TCflIaP4O+7WQxKMshh65TO80KW6HMNHDRWjIB6c6XiB
 5byAerQYVcvjnR972DodKHlfgfaUu58pAaSVfZ09KIsPO172vLlX5WNtUQSc5I1e+B9k
 fPL4E5UFeuW9wpX34FVa/LoKLyIEsi8IvzMougNWFNEGn5ddPfl17LfZbiAW2TpZo3t+
 6IvGvJdW09clPzxv16pZlcamVRlaMY4WARq2Hua+og6kwrCcx3sNlvTyyE7KApiSTSPi
 TurQ==
X-Gm-Message-State: AOAM531d2ldsMbb2Ve/dXrpvws1AwfzTrHXF5Nk/+eQYBe2uycv6gJrY
 YjNfGnfeirZJVLUzGJ0Fhp4FBomiXuVRiw==
X-Google-Smtp-Source: ABdhPJzj92+e3OB2hKpgs3xwF4mjBBxXCwqlb6v6RDKxi14yj1hD8bOosCP9Ef0dymygdaz7FGIRoQ==
X-Received: by 2002:a37:b387:: with SMTP id
 c129mr19603400qkf.292.1595344811787; 
 Tue, 21 Jul 2020 08:20:11 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id w1sm2701714qkj.90.2020.07.21.08.20.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jul 2020 08:20:11 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 21 Jul 2020 11:20:10 -0400
Message-Id: <52E0DE83-9B96-49E5-9E8D-6662D31ABAB8@gmail.com>
References: <CAMVZM+9M6goRUidxkJ70r+fJW_Qj0FMotYWtdSaV6gzQ12F1Rw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAMVZM+9M6goRUidxkJ70r+fJW_Qj0FMotYWtdSaV6gzQ12F1Rw@mail.gmail.com>
To: Pavlos Basaras <pbasaras@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] iperf3 speed test fails between usrp n310 and host
 computer
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3048516532273872944=="
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


--===============3048516532273872944==
Content-Type: multipart/alternative; boundary=Apple-Mail-95D1E0FE-A8B6-481D-97B8-C58C6B732AE2
Content-Transfer-Encoding: 7bit


--Apple-Mail-95D1E0FE-A8B6-481D-97B8-C58C6B732AE2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The ports that iperf3 terminate on would be inside the ARM host in the Zynq.=
 I would not expect stunning performance there. =20

For actual data, which is what you care about, the streams originate inside t=
he FPGA logic.



Sent from my iPhone

> On Jul 21, 2020, at 10:59 AM, Pavlos Basaras via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> i installed the usrp n310 following the instructions from https://kb.ettus=
.com/USRP_N300/N310/N320/N321_Getting_Started_Guide
>=20
> I have the same uhd between the usrp and the host
>=20
> output of  "uhd_find_devices"
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15=
.0.HEAD-0-gaea0e2de
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31B4030
>     addr: 192.168.20.2
>     claimed: False
>     mgmt_addr: 192.168.10.2 <-- sfp0
>     mgmt_addr: 192.168.20.2 <-- sfp1
>     mgmt_addr: 192.168.40.70  <-- this is from the dhcp
>     product: n310
>     type: n3xx
>=20
>=20
> I can ping and ssh connect through any interface.=20
> The uhd_usrp_probe command also appears to be correct also.
>=20
>=20
>=20
> The host has a network adapter x520-da2 with two sfp+ ports, one of which i=
s configured to be connected with the sfp 1 port of the usrp at 10G, whereas=
 i use another port (on a DIFFERENT NIC on the host) at 1G to connect to sfp=
 port 0 of the usrp.
> For the fpga image as indicated by the quide i used: uhd_image_loader --ar=
gs "type=3Dn3xx,addr=3D<N3xx_IP_ADDR>,fpga=3DHG" to have 1G for sfp 0 and 10=
G for the sfp 1.
>=20
> I am trying to test the speed limit between the host and the host with ipe=
rf3.
>=20
> 1--- For the sfp0 (1G port) the speed is limited to about 200Mbps, which i=
s very low compared to the 1G port. I connect the host to the usrp with the 1=
 RJ45 =E2=80=93 SFP+ Adapter and the cat5e ethernet cable that came with the=
 usrpn310. I should see a significantly
> higher speed (close to 1G), correct?
>=20
> 2--- For the sfp1(10G port) the speed is a bit higher e.g, 300Mbps, but af=
ter only a few seconds it crushes with the error: iperf3: error - control so=
cket has closed unexpectedly. I am not sure if the  problem is an iperf3 rel=
ated error/bug or there is stg wrong with the general setup. After this fail=
ure the connection over the sfp1 port is lost, i cannot run another iper3 te=
st again or ping to this port. I also trying ifconfig down/up but it does no=
t work. Only after reboot i can reuse sfp port 1/
>=20
> Example test:
> iperf3 -s
> iperf3 -c 192.168.20.2  -P 20
>=20
> any suggestions???
>=20
> all the best,
> Pavlos.
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-95D1E0FE-A8B6-481D-97B8-C58C6B732AE2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The ports that iperf3 terminate on would be=
 inside the ARM host in the Zynq. I would not expect stunning performance th=
ere. &nbsp;<div><br></div><div>For actual data, which is what you care about=
, the streams originate inside the FPGA logic.</div><div><br></div><div><br>=
</div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><b=
r><blockquote type=3D"cite">On Jul 21, 2020, at 10:59 AM, Pavlos Basaras via=
 USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></=
div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>i instal=
led the usrp n310 following the instructions from <a href=3D"https://kb.ettu=
s.com/USRP_N300/N310/N320/N321_Getting_Started_Guide">https://kb.ettus.com/U=
SRP_N300/N310/N320/N321_Getting_Started_Guide</a></div><div><br></div><div>I=
 have the same uhd between the usrp and the host<br></div><div><br></div><di=
v>output of&nbsp; "uhd_find_devices"</div><div>[INFO] [UHD] linux; GNU C++ v=
ersion 5.4.0 20160609; Boost_105800; UHD_3.15.0.HEAD-0-gaea0e2de<br>--------=
------------------------------------------<br>-- UHD Device 0<br>-----------=
---------------------------------------<br>Device Address:<br>&nbsp; &nbsp; s=
erial: 31B4030<br>&nbsp; &nbsp; addr: 192.168.20.2<br>&nbsp; &nbsp; claimed:=
 False<br>&nbsp; &nbsp; mgmt_addr: 192.168.10.2 &lt;-- sfp0<br>&nbsp; &nbsp;=
 mgmt_addr: 192.168.20.2 &lt;-- sfp1<br>&nbsp; &nbsp; mgmt_addr: 192.168.40.=
70&nbsp; &lt;-- this is from the dhcp<br>&nbsp; &nbsp; product: n310<br>&nbs=
p; &nbsp; type: n3xx<br></div><div><br></div><div><br></div><div>I can ping a=
nd ssh connect through any interface. <br></div><div>The uhd_usrp_probe comm=
and also appears to be correct also.<br></div><div><br></div><div><br></div>=
<div><br></div><div>The host has a network adapter x520-da2 with two sfp+ po=
rts, one of which is configured to be connected with the sfp 1 port of the u=
srp at 10G, whereas i use another port (on a DIFFERENT NIC on the host) at 1=
G to connect to sfp port 0 of the usrp.</div><div>For the fpga image as indi=
cated by the quide i used: uhd_image_loader --args "type=3Dn3xx,addr=3D&lt;N=
3xx_IP_ADDR&gt;,fpga=3DHG" to have 1G for sfp 0 and 10G for the sfp 1.</div>=
<div><br></div><div>I am trying to test the speed limit between the host and=
 the host with iperf3.</div><div><br></div><div>1--- For the sfp0 (1G port) t=
he speed is limited to about 200Mbps, which is very low compared to the 1G p=
ort. I connect the host to the usrp with the 1 RJ45 =E2=80=93 SFP+ Adapter a=
nd the cat5e ethernet cable that came with the usrpn310. I should see a sign=
ificantly</div><div>higher speed (close to 1G), correct?<br></div><div><br><=
/div><div>2--- For the sfp1(10G port) the speed is a bit higher e.g, 300Mbps=
, but after only a few seconds it crushes with the error: iperf3: error - co=
ntrol socket has closed unexpectedly. I am not sure if the&nbsp; problem is a=
n iperf3 related error/bug or there is stg wrong with the general setup. Aft=
er this failure the connection over the sfp1 port is lost, i cannot run anot=
her iper3 test again or ping to this port. I also trying ifconfig down/up bu=
t it does not work. Only after reboot i can reuse sfp port 1/<br></div><div>=
<br></div><div>Example test:<br></div><div>iperf3 -s</div><div>iperf3 -c 192=
.168.20.2&nbsp; -P 20<br></div><div><br></div><div>any suggestions???</div><=
div><br></div><div>all the best,</div><div>Pavlos.<br></div><div><br></div><=
div><br></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-95D1E0FE-A8B6-481D-97B8-C58C6B732AE2--


--===============3048516532273872944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3048516532273872944==--

