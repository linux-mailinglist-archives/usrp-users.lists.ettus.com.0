Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1471345FA
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 16:20:28 +0100 (CET)
Received: from [::1] (port=34500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipD8F-0006p8-BJ; Wed, 08 Jan 2020 10:20:27 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:33019)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <akinsoysal@gmail.com>)
 id 1ipD8B-0006go-6k
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 10:20:23 -0500
Received: by mail-lj1-f182.google.com with SMTP id y6so3764075lji.0
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 07:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wT5kJOMPsV5PAMHtrvG7tmfmFrIvNaIRPGHLqzj3hW4=;
 b=KbJ5naACkQRh+2E//vv6dG6MfEgXPrOfBndLqLegmntA/zp1CJrjz6zvklOQLmfOBf
 cPuTDPi4h01WFyMwRiHBpAwpXvSYUxoVXVfDm1T03Z0Frkz0EhuqFf6YLzndCy8q46Da
 jNx+hwIbNg53t2KKTKgv+Yl+eczX/cdBQ+wtFCC8ZFVR/OTG/zg4oRbRMBcE3SuIhtSg
 uKKvNIqCyjpWFvt0pcFSlfKFqEqebtX+bhOX027trcNm6/HHYhaiDpBpTNqWDcAAZtp5
 hQVCejgq4ahh1pqSjXyKW/26vPFICeOCHC6MgbdSRkZhTxKHMaY7PNBSdoNsDNpSvqkb
 LVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wT5kJOMPsV5PAMHtrvG7tmfmFrIvNaIRPGHLqzj3hW4=;
 b=nXsRfWp9Nk98RFSaG16I3zmloAbjlLIlBXsUVqAH06ZjMRh8oSdggml5sUijLZ1l3Z
 vJIrL79aob1hb26l/id5XAcXehwDXHGi/u0fu2OJTXGadvRpyf5FFA3AiNrPKjoxQw9F
 tYXM8rEfXDN6k7PVmFZzpWTF/djBIKx82SINH240BIWIWjsr7liQUtZ9NTTwi9+x2g2U
 vjIkHxxdNC+LiDJ0XOn4rep4qXMq8nFrV1/WuLJD/8S9P26wI+qexAx5FRW+/DR8Vnc8
 WANWkx5ik6xZ8NpUG1fUW4kVzsED9vu1fbYy5S9bIDerwWIFLIqsO/MX1M8IQAY91/dz
 bdfA==
X-Gm-Message-State: APjAAAWSdSEuyJQuNSG+/gA4e+buptGLNX2M8J2yHArt3SMjCTlQgOVu
 gGfqV5ma2WE1Nefd+3igNERwfc0JHWyU0FKI6y4=
X-Google-Smtp-Source: APXvYqzpLOqcn+3UuvFHcDgVcAhbuZoNiUCAlO5nHioYhLT9L78ocwKAl3UH9QIp9VZkaGRE9vWtVCkVmk41OI5RVpo=
X-Received: by 2002:a2e:8119:: with SMTP id d25mr3289350ljg.76.1578496776784; 
 Wed, 08 Jan 2020 07:19:36 -0800 (PST)
MIME-Version: 1.0
References: <e44a32d6-8d73-b567-eda2-ce00144c592a@eurecom.fr>
 <CANf970b5b0igU4ag--+4DHdopWHr+gsuwU5wEupyXcKEA9m3FQ@mail.gmail.com>
In-Reply-To: <CANf970b5b0igU4ag--+4DHdopWHr+gsuwU5wEupyXcKEA9m3FQ@mail.gmail.com>
Date: Wed, 8 Jan 2020 18:19:24 +0300
Message-ID: <CAFzRrg0gc9WBWdUoqSRhzu1WzvSZRkVVnsxS=6gC-ty-RPBH9Q@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] DPDK runtime error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: akin soysal via USRP-users <usrp-users@lists.ettus.com>
Reply-To: akin soysal <akinsoysal@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0432962378697595481=="
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

--===============0432962378697595481==
Content-Type: multipart/alternative; boundary="000000000000a8cfba059ba26b2f"

--000000000000a8cfba059ba26b2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

Is this problem fixed? If yes, could you please tell how? We have a similar
error, so it would be helpful.

Thanks and regards,
Ak=C4=B1n

3 Oca 2020 Cum 23:22 tarihinde Sam Reiter via USRP-users <
usrp-users@lists.ettus.com> =C5=9Funu yazd=C4=B1:

> Florian,
>
> DPDK 18.11 is not supported on UHD 3.x. You'll need to use DPDK 17.11.
>
> Sam Reiter
> Ettus Research
>
> On Mon, Dec 23, 2019 at 9:51 AM Florian Kaltenberger via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear all,
>>
>> we have finally managed to set up UHD (3.15) with DPDK (18.11) support o=
n
>> our RedHat 7 system (both installed from source) with our N310. I have
>> configured the system as explained here
>> http://files.ettus.com/manual/page_dpdk.html but when calling
>>
>> uhd_usrp_probe --args
>> "use_dpdk=3D1,mgmt_addr=3D192.168.12.1,addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,master_clock_rate=3D122.88e6,type=3Dn3xx"
>>
>> I am getting the following runtime error (all the way at the bottom):
>> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
>> Boost_106900; UHD_3.15.0.0-0-g4e06022c
>> EAL: Detected 10 lcore(s)
>> EAL: No free hugepages reported in hugepages-1048576kB
>> EAL: Probing VFIO support...
>> EAL: VFIO support initialized
>> EAL: PCI device 0000:00:19.0 on NUMA socket 0
>> EAL:   probe driver: 8086:153a net_e1000_em
>> EAL: PCI device 0000:01:00.0 on NUMA socket 0
>> EAL:   probe driver: 8086:1572 net_i40e
>> EAL: PCI device 0000:01:00.1 on NUMA socket 0
>> EAL:   probe driver: 8086:1572 net_i40e
>> EAL:   using IOMMU type 1 (Type 1)
>> PMD: Global register is changed during enable FDIR flexible payload
>> PMD: Global register is changed during support QinQ parser
>> PMD: Global register is changed during configure hash input set
>> PMD: Global register is changed during configure fdir mask
>> PMD: Global register is changed during configure hash mask
>> PMD: Global register is changed during support QinQ cloud filter
>> PMD: Global register is changed during support TPID configuration
>> EAL: PCI device 0000:01:00.2 on NUMA socket 0
>> EAL:   probe driver: 8086:1572 net_i40e
>> EAL: PCI device 0000:01:00.3 on NUMA socket 0
>> EAL:   probe driver: 8086:1572 net_i40e
>> PMD: Global register is changed during enable FDIR flexible payload
>> PMD: Global register is changed during support QinQ parser
>> PMD: Global register is changed during configure hash input set
>> PMD: Global register is changed during configure fdir mask
>> PMD: Global register is changed during configure hash mask
>> PMD: Global register is changed during support QinQ cloud filter
>> PMD: Global register is changed during support TPID configuration
>> EAL: Waiting for links to come up...
>> EAL: Init DONE!
>> EAL: Starting I/O threads!
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D192.168.12.1,type=3Dn3xx,product=3Dn310,serial=3D31641BC,cla=
imed=3DFalse,use_dpdk=3D1,addr=3D192.168.10.2,second_addr=3D192.168.20.2,ma=
ster_clock_rate=3D122.88e6
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `mgmt_addr=3D192.168.12.1,product=3Dn310,master_clock_rate=3D122.88e6,se=
cond_addr=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=
=3Dinternal'.
>> EAL: Please set IPv4 address for port 0 before opening socket
>> [ERROR] [MPMD] Failure during block enumeration: AssertionError: _rx_soc=
k
>> !=3D nullptr
>>   in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
>> uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const string=
&,
>> const string&, const uhd::transport::zero_copy_xport_params&)
>>
>> I am also copying the output of "dpdk-devbind  --status" which shows tha=
t
>> the two interfaces connected to the USRP use the vfio-pci driver for DPD=
K
>>
>> Network devices using DPDK-compatible driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> 0000:01:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-p=
ci
>> unused=3Di40e
>> 0000:01:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-p=
ci
>> unused=3Di40e
>>
>> Network devices using kernel driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> 0000:00:19.0 'Ethernet Connection I217-LM 153a' if=3Denp0s25 drv=3De1000=
e
>> unused=3Dvfio-pci *Active*
>> 0000:01:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dp1p1
>> drv=3Di40e unused=3Dvfio-pci
>> 0000:01:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Dp1p3
>> drv=3Di40e unused=3Dvfio-pci
>>
>> What surprises me is that in the output of the uhd_usrp_probe, it does
>> not say it is using the driver for DPDK. any ideas what could be wrong?
>>
>> Florian.
>> --
>> Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>,
>> LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter
>> <https://twitter.com/osalliance5g>!
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a8cfba059ba26b2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello all,<div dir=3D"auto"><br></div><div dir=3D"auto">I=
s this problem fixed? If yes, could you please tell how? We have a similar =
error, so it would be helpful.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks and regards,</div><div dir=3D"auto">Ak=C4=B1n</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">3 Oca 2020=
 Cum 23:22 tarihinde Sam Reiter via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =C5=9Funu yazd=C4=
=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Florian,<div>=
<br></div><div>DPDK 18.11 is not supported on UHD 3.x. You&#39;ll need to u=
se DPDK 17.11.=C2=A0</div><div><br clear=3D"all"><div><div dir=3D"ltr" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam R=
eiter=C2=A0<div>Ettus Research</div></div></div></div></div></div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Dec 23, 2019 at 9:51 AM Florian Kaltenberger via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <p>Dear all,</p>
    <p>we have finally managed to set up UHD (3.15) with DPDK (18.11)
      support on our RedHat 7 system (both installed from source) with
      our N310. I have configured the system as explained here <a href=3D"h=
ttp://files.ettus.com/manual/page_dpdk.html" target=3D"_blank" rel=3D"noref=
errer">http://files.ettus.com/manual/page_dpdk.html</a>
      but when calling <br>
    </p>
    <p>uhd_usrp_probe --args
&quot;use_dpdk=3D1,mgmt_addr=3D192.168.12.1,addr=3D192.168.10.2,second_addr=
=3D192.168.20.2,master_clock_rate=3D122.88e6,type=3Dn3xx&quot;<br>
    </p>
    <p>I am getting the following runtime error (all the way at the
      bottom):</p>
    [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
    4.8.5-39); Boost_106900; UHD_3.15.0.0-0-g4e06022c<br>
    EAL: Detected 10 lcore(s)<br>
    EAL: No free hugepages reported in hugepages-1048576kB<br>
    EAL: Probing VFIO support...<br>
    EAL: VFIO support initialized<br>
    EAL: PCI device 0000:00:19.0 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:153a net_e1000_em<br>
    EAL: PCI device 0000:01:00.0 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.1 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL:=C2=A0=C2=A0 using IOMMU type 1 (Type 1)<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: PCI device 0000:01:00.2 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.3 on NUMA socket 0<br>
    EAL:=C2=A0=C2=A0 probe driver: 8086:1572 net_i40e<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: Waiting for links to come up...<br>
    EAL: Init DONE!<br>
    EAL: Starting I/O threads!<br>
    [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.12.1,type=3Dn3xx,product=3Dn310,serial=3D31641BC,claime=
d=3DFalse,use_dpdk=3D1,addr=3D192.168.10.2,second_addr=3D192.168.20.2,maste=
r_clock_rate=3D122.88e6<br>
    [INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=3D192.168.12.1,product=3Dn310,master_clock_rate=3D122.88e6,secon=
d_addr=3D192.168.20.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3Din=
ternal&#39;.<br>
    <font color=3D"#ff0000">EAL: Please set IPv4 address for port 0 before
      opening socket<br>
      [ERROR] [MPMD] Failure during block enumeration: AssertionError:
      _rx_sock !=3D nullptr<br>
      =C2=A0 in
      uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
      uhd::transport::uhd_dpdk_ctx&amp;, unsigned int, const
      string&amp;, const string&amp;, const string&amp;, const
      uhd::transport::zero_copy_xport_params&amp;)</font><br>
    <p>I am also copying the output of &quot;dpdk-devbind=C2=A0 --status&qu=
ot; which
      shows that the two interfaces connected to the USRP use the
      vfio-pci driver for DPDK<br>
    </p>
    <p>Network devices using DPDK-compatible driver<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
      0000:01:00.1 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      drv=3Dvfio-pci unused=3Di40e<br>
      0000:01:00.3 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      drv=3Dvfio-pci unused=3Di40e<br>
      <br>
      Network devices using kernel driver<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
      0000:00:19.0 &#39;Ethernet Connection I217-LM 153a&#39; if=3Denp0s25
      drv=3De1000e unused=3Dvfio-pci *Active*<br>
      0000:01:00.0 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      if=3Dp1p1 drv=3Di40e unused=3Dvfio-pci <br>
      0000:01:00.2 &#39;Ethernet Controller X710 for 10GbE SFP+ 1572&#39;
      if=3Dp1p3 drv=3Di40e unused=3Dvfio-pci <br>
      <br>
    </p>
    <p>What surprises me is that in the output of the uhd_usrp_probe, it
      does not say it is using the driver for DPDK. any ideas what could
      be wrong?</p>
    <p>Florian.<br>
    </p>
    <div>-- <br>
     =20
     =20
      Follow us on <a href=3D"https://plus.google.com/+OpenairinterfaceOrg"=
 target=3D"_blank" rel=3D"noreferrer">Google+</a>,
      <a href=3D"https://www.linkedin.com/company/openairinterface" target=
=3D"_blank" rel=3D"noreferrer">LinkedIn</a>,
      or <a href=3D"https://twitter.com/osalliance5g" target=3D"_blank" rel=
=3D"noreferrer">Twitter</a>!<br>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a8cfba059ba26b2f--


--===============0432962378697595481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0432962378697595481==--

