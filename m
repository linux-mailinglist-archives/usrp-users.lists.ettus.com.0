Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1857C2283FB
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 17:40:01 +0200 (CEST)
Received: from [::1] (port=41000 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxuN4-0005OY-Mj; Tue, 21 Jul 2020 11:39:58 -0400
Received: from mail-qv1-f49.google.com ([209.85.219.49]:45150)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxuN0-00054L-Us
 for USRP-users@lists.ettus.com; Tue, 21 Jul 2020 11:39:54 -0400
Received: by mail-qv1-f49.google.com with SMTP id u8so9493623qvj.12
 for <USRP-users@lists.ettus.com>; Tue, 21 Jul 2020 08:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=iLfm579EHkMwtQxGy9q0r7I/yC/ypuPsHoGErJL+G18=;
 b=KMjCuIOfmXR2g3KOCdaLlYZFXgt1rZVM/2q8dSqG71zFji8BWgBYeYGyjcwMF8K2ul
 37ylGrwaz8eFTBMGBKE4cV+cZPkpPlejk0+r8ZfvPC39eBP6iC6tdfm/HIfwKYr3LC4A
 Gc1xYd5SlPkwAnJLsJgMiPYFRIywsLXNFd2PjZwImI/wkFqJ1crytKF/BczP8pnxzqas
 m2WYv4vsTJb7xx2O/eBPebFlQuivDf9dlkVNi3XFBPTeLZ1Qz6J0ApVlYgX2hqsTZWrx
 sBPonHJlKKvvbGQiW9boOnYJXlAyRz/NkRGyn5zvO2RnQezi4VMs8YXvQ7iZB00SmRlT
 vqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=iLfm579EHkMwtQxGy9q0r7I/yC/ypuPsHoGErJL+G18=;
 b=OSZ+rd1W4vua0ZU3wA9vxIkGOUoboKfU0AOGXDP/upKBAoJd+nS3mZRs7gAVOSE3LQ
 EFVDZbtMiy7WzEsQO7wVptSpep048oBtDQ30T2INiyqxngkqPb6jTQJHmRoT347rRp7z
 akWw0u0HQ5tY66pLxF9r3CZfzd6faPspmSjjrI/QvD0Ao0lZcYmjb06NLWfbgpcyS6LZ
 Udif0vijhF35l0tIFtqWz3lLsDZhNMR6VP3LzAYo7RWcjcBooJ3pE3JGn5IfqbNEyibf
 muKtAsqOquGaSGHMGRqUOcn1rY2lRu/Oc461ohmT+6nGO7Br4dIBzNkfRLj5St8H1bZ8
 slew==
X-Gm-Message-State: AOAM530ue1qSCUxFsaheqx2xUWe1M0A0J/4qgD/zpuo9xmdEkexdNBmd
 z+7uKmAXOhEQOpaIEy5Yefo=
X-Google-Smtp-Source: ABdhPJxI0gf1oMhJIe+/B395c/OnTAkDMfDyp1x9W98c0rkl/OS1DzsEJIAntCBW/dWVGxBamr921A==
X-Received: by 2002:a0c:fdc5:: with SMTP id g5mr26168652qvs.189.1595345954310; 
 Tue, 21 Jul 2020 08:39:14 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id a11sm2908278qkh.103.2020.07.21.08.39.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jul 2020 08:39:13 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 21 Jul 2020 11:39:13 -0400
Message-Id: <26EFCA24-D6CE-407E-B099-BA95C3DB3C3D@gmail.com>
References: <52E0DE83-9B96-49E5-9E8D-6662D31ABAB8@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <52E0DE83-9B96-49E5-9E8D-6662D31ABAB8@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4729771963496074834=="
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


--===============4729771963496074834==
Content-Type: multipart/alternative; boundary=Apple-Mail-67B235BC-0885-4D17-9CD8-8187FC021711
Content-Transfer-Encoding: 7bit


--Apple-Mail-67B235BC-0885-4D17-9CD8-8187FC021711
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You might want to look into benchmark_rate.=20

https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_R=
adio


Sent from my iPhone

> On Jul 21, 2020, at 11:20 AM, Marcus D Leech <patchvonbraun@gmail.com> wro=
te:
>=20
> =EF=BB=BFThe ports that iperf3 terminate on would be inside the ARM host i=
n the Zynq. I would not expect stunning performance there. =20
>=20
> For actual data, which is what you care about, the streams originate insid=
e the FPGA logic.
>=20
>=20
>=20
> Sent from my iPhone
>=20
>>> On Jul 21, 2020, at 10:59 AM, Pavlos Basaras via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>>=20
>> =EF=BB=BF
>> Hello,
>>=20
>> i installed the usrp n310 following the instructions from https://kb.ettu=
s.com/USRP_N300/N310/N320/N321_Getting_Started_Guide
>>=20
>> I have the same uhd between the usrp and the host
>>=20
>> output of  "uhd_find_devices"
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
5.0.HEAD-0-gaea0e2de
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 31B4030
>>     addr: 192.168.20.2
>>     claimed: False
>>     mgmt_addr: 192.168.10.2 <-- sfp0
>>     mgmt_addr: 192.168.20.2 <-- sfp1
>>     mgmt_addr: 192.168.40.70  <-- this is from the dhcp
>>     product: n310
>>     type: n3xx
>>=20
>>=20
>> I can ping and ssh connect through any interface.=20
>> The uhd_usrp_probe command also appears to be correct also.
>>=20
>>=20
>>=20
>> The host has a network adapter x520-da2 with two sfp+ ports, one of which=
 is configured to be connected with the sfp 1 port of the usrp at 10G, where=
as i use another port (on a DIFFERENT NIC on the host) at 1G to connect to s=
fp port 0 of the usrp.
>> For the fpga image as indicated by the quide i used: uhd_image_loader --a=
rgs "type=3Dn3xx,addr=3D<N3xx_IP_ADDR>,fpga=3DHG" to have 1G for sfp 0 and 1=
0G for the sfp 1.
>>=20
>> I am trying to test the speed limit between the host and the host with ip=
erf3.
>>=20
>> 1--- For the sfp0 (1G port) the speed is limited to about 200Mbps, which i=
s very low compared to the 1G port. I connect the host to the usrp with the 1=
 RJ45 =E2=80=93 SFP+ Adapter and the cat5e ethernet cable that came with the=
 usrpn310. I should see a significantly
>> higher speed (close to 1G), correct?
>>=20
>> 2--- For the sfp1(10G port) the speed is a bit higher e.g, 300Mbps, but a=
fter only a few seconds it crushes with the error: iperf3: error - control s=
ocket has closed unexpectedly. I am not sure if the  problem is an iperf3 re=
lated error/bug or there is stg wrong with the general setup. After this fai=
lure the connection over the sfp1 port is lost, i cannot run another iper3 t=
est again or ping to this port. I also trying ifconfig down/up but it does n=
ot work. Only after reboot i can reuse sfp port 1/
>>=20
>> Example test:
>> iperf3 -s
>> iperf3 -c 192.168.20.2  -P 20
>>=20
>> any suggestions???
>>=20
>> all the best,
>> Pavlos.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-67B235BC-0885-4D17-9CD8-8187FC021711
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You might want to look into benchmark_rate.=
&nbsp;<div><br></div><div><a href=3D"https://kb.ettus.com/Verifying_the_Oper=
ation_of_the_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/Verifying_th=
e_Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a></div><div><br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Jul 21, 2020, at 11:20 AM, Marcus D Leech &lt;patchvonbraun@gmail.=
com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html; chars=
et=3Dutf-8">The ports that iperf3 terminate on would be inside the ARM host i=
n the Zynq. I would not expect stunning performance there. &nbsp;<div><br></=
div><div>For actual data, which is what you care about, the streams originat=
e inside the FPGA logic.</div><div><br></div><div><br></div><div><br><div di=
r=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Jul 21, 2020, at 10:59 AM, Pavlos Basaras via USRP-users &lt;usrp-u=
sers@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div>Hello,</div><div><br></div><div>i installed the usrp n310 followi=
ng the instructions from <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320=
/N321_Getting_Started_Guide">https://kb.ettus.com/USRP_N300/N310/N320/N321_G=
etting_Started_Guide</a></div><div><br></div><div>I have the same uhd betwee=
n the usrp and the host<br></div><div><br></div><div>output of&nbsp; "uhd_fi=
nd_devices"</div><div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Bo=
ost_105800; UHD_3.15.0.HEAD-0-gaea0e2de<br>---------------------------------=
-----------------<br>-- UHD Device 0<br>------------------------------------=
--------------<br>Device Address:<br>&nbsp; &nbsp; serial: 31B4030<br>&nbsp;=
 &nbsp; addr: 192.168.20.2<br>&nbsp; &nbsp; claimed: False<br>&nbsp; &nbsp; m=
gmt_addr: 192.168.10.2 &lt;-- sfp0<br>&nbsp; &nbsp; mgmt_addr: 192.168.20.2 &=
lt;-- sfp1<br>&nbsp; &nbsp; mgmt_addr: 192.168.40.70&nbsp; &lt;-- this is fr=
om the dhcp<br>&nbsp; &nbsp; product: n310<br>&nbsp; &nbsp; type: n3xx<br></=
div><div><br></div><div><br></div><div>I can ping and ssh connect through an=
y interface. <br></div><div>The uhd_usrp_probe command also appears to be co=
rrect also.<br></div><div><br></div><div><br></div><div><br></div><div>The h=
ost has a network adapter x520-da2 with two sfp+ ports, one of which is conf=
igured to be connected with the sfp 1 port of the usrp at 10G, whereas i use=
 another port (on a DIFFERENT NIC on the host) at 1G to connect to sfp port 0=
 of the usrp.</div><div>For the fpga image as indicated by the quide i used:=
 uhd_image_loader --args "type=3Dn3xx,addr=3D&lt;N3xx_IP_ADDR&gt;,fpga=3DHG"=
 to have 1G for sfp 0 and 10G for the sfp 1.</div><div><br></div><div>I am t=
rying to test the speed limit between the host and the host with iperf3.</di=
v><div><br></div><div>1--- For the sfp0 (1G port) the speed is limited to ab=
out 200Mbps, which is very low compared to the 1G port. I connect the host t=
o the usrp with the 1 RJ45 =E2=80=93 SFP+ Adapter and the cat5e ethernet cab=
le that came with the usrpn310. I should see a significantly</div><div>highe=
r speed (close to 1G), correct?<br></div><div><br></div><div>2--- For the sf=
p1(10G port) the speed is a bit higher e.g, 300Mbps, but after only a few se=
conds it crushes with the error: iperf3: error - control socket has closed u=
nexpectedly. I am not sure if the&nbsp; problem is an iperf3 related error/b=
ug or there is stg wrong with the general setup. After this failure the conn=
ection over the sfp1 port is lost, i cannot run another iper3 test again or p=
ing to this port. I also trying ifconfig down/up but it does not work. Only a=
fter reboot i can reuse sfp port 1/<br></div><div><br></div><div>Example tes=
t:<br></div><div>iperf3 -s</div><div>iperf3 -c 192.168.20.2&nbsp; -P 20<br><=
/div><div><br></div><div>any suggestions???</div><div><br></div><div>all the=
 best,</div><div>Pavlos.<br></div><div><br></div><div><br></div></div></div>=
</div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></blockquote></div></body></html>=

--Apple-Mail-67B235BC-0885-4D17-9CD8-8187FC021711--


--===============4729771963496074834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4729771963496074834==--

