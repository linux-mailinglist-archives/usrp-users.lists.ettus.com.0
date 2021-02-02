Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3826030B58C
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 04:02:24 +0100 (CET)
Received: from [::1] (port=40502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6lxK-00053w-1C; Mon, 01 Feb 2021 22:02:18 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:36484)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l6lxG-0004zh-JZ
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 22:02:14 -0500
Received: by mail-ot1-f46.google.com with SMTP id d7so18500747otf.3
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 19:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=jKXmHmuCaSCpitEVorZQJAJHim/ec94BNnJtnYe4k28=;
 b=jWpKca06Dh8GJQqkCRVr+88PsEalxk0OKaxWPW28X1O8Oz9TsG6cI95OF/kvaci3ba
 QhH7c2N/GRYg68Z/Dir8Tbd0GOkXYQy/p7yVkgOGVnrtC7SeB6FfqdputX8F3c4sncwv
 ueQ/8QBqRCvvz4/1GgLuo4OIpAF7HYnLCdpCgwRcHohiEa79+0Y6dvt1kd2TM8FFB+aj
 ZZ4ME90eI2Li0euCLRzZRJOLDe1b8KNaw2U5YINabxyZPyEC1uml+YitnIzhm5BJaa1K
 xv5lD7QWF8LlmG25dk4jWcg90X8qyoSDvlisSVJaOp+reWQTwmleUw2yFSeeud0NVmDK
 gjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=jKXmHmuCaSCpitEVorZQJAJHim/ec94BNnJtnYe4k28=;
 b=k/M9sk4kmS93loRO8hf4k+4ZphC/rThguT+NL2CrqM22y3VLHGeclnTNH0uvHwKNLi
 06XcOFAtSVnUTXdIpmfDjH80upX395sBYDQHaGYTHaSS9mXF8IuXhwyXY8itmrPcPomQ
 f0joHqBsFiuM0r+VmBFRjHM9g3PZsGzMAKSl7FilLJoZAaA6oGBRAIPYb64Egdgh2FmP
 aj7wY/hneNHjMjol4hFxwN6dyghr5fCjtA9dTyn6wkXV3FsLrvVnZM2NzsokY/KSX5GE
 RbcAdrzdjLQjaJj71oBZvbdoq8eRRaIpcVBrS2/Op6fSlOerSZJGFQk3SL5vIdOgyuP9
 syhg==
X-Gm-Message-State: AOAM532AlWTKvInU7zSr9ScTsc0DM//VRQoyZJ4aXArwLDI78l6X5PCF
 /uZIbZ8zDY9ud8IjtRmuZq+xF28iGIf5Mc/x52MyZ1xJg1U=
X-Google-Smtp-Source: ABdhPJxCO2HALqr/xXK0iwmp5spu8xuku1Icc9yt5LIZJ7BMQojCKkL2yIbtQFhUgyRxOr61gG5bXPomCToq9bF4zKI=
X-Received: by 2002:a9d:7486:: with SMTP id t6mr13807602otk.58.1612234893371; 
 Mon, 01 Feb 2021 19:01:33 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
In-Reply-To: <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
Date: Mon, 1 Feb 2021 22:01:22 -0500
Message-ID: <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk
 library)
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8868108712573455962=="
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

--===============8868108712573455962==
Content-Type: multipart/alternative; boundary="0000000000001d714705ba51b01d"

--0000000000001d714705ba51b01d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel XL710
NIC, and N310 (or X310)?

On Mon, Feb 1, 2021 at 7:54 PM Rob Kossler <rkossler@nd.edu> wrote:

> BTW, here is the output of the dpdk-devbind status. It all looks good to
> me.
>
> root@irisheyes9-Z240-SFF:~# dpdk-devbind -s
>
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:03:00.0 'Ethernet Controller XL710 for 40GbE QSFP+ 1584' drv=3Dvfio-=
pci
> unused=3Di40e
> 0000:03:00.1 'Ethernet Controller XL710 for 40GbE QSFP+ 1584' drv=3Dvfio-=
pci
> unused=3Di40e
>
> Network devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:00:1f.6 'Ethernet Connection (2) I219-LM 15b7' if=3Deno1 drv=3De1000=
e
> unused=3Dvfio-pci *Active*
> 0000:03:00.2 'Ethernet Controller XL710 for 40GbE QSFP+ 1584' if=3Dens4f2
> drv=3Di40e unused=3Dvfio-pci *Active*
> 0000:03:00.3 'Ethernet Controller XL710 for 40GbE QSFP+ 1584' if=3Dens4f3
> drv=3Di40e unused=3Dvfio-pci *Active*
>
>
> On Mon, Feb 1, 2021 at 7:51 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> I'm running as root.  Here is the full command I'm using with my N310 an=
d
>> the first part of the resulting output. Note that the ERROR is now a UHD
>> generated error message rather than an error message from the DPDK libs.
>>
>> One thing I'm looking into is the "vfio-pci" module.  The instructions
>> say to load this via "modprobe vfio-pci" prior to binding the NIC.  But,=
 I
>> didn't have to do this and it seems that this module might now be built-=
in
>> such that it is not necessary. In any case, the "dpdk-devbind" seems to
>> work fine so maybe I am barking up the wrong tree.
>>
>> root@irisheyes9-Z240-SFF:~# benchmark_rate --rx_rate 62.5e6 --tx_rate
>> 62.5e6 --channels=3D"0,1,2,3"
>> --args=3D"mgmt_addr=3D192.168.1.74,addr=3D192.168.61.2,use_dpdk=3D1"
>>
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> UHD_4.0.0.0-50-ge520e3ff
>> EAL: Detected 8 lcore(s)
>> EAL: Detected 1 NUMA nodes
>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>> EAL: No free hugepages reported in hugepages-1048576kB
>> EAL: Probing VFIO support...
>> EAL: VFIO support initialized
>> [ERROR] [DPDK] No available DPDK devices (ports) found!
>> EAL: FATAL: already called initialization.
>> EAL: already called initialization.
>>
>>
>> On Mon, Feb 1, 2021 at 7:44 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Unfortunately that=E2=80=99s one I can=E2=80=99t help with. I don=E2=80=
=99t have any DPDK
>>> capable machines at my disposal.
>>>
>>> I vaguely recall that you have to be root for DPDK to work. Perhaps
>>> that=E2=80=99s the issue?
>>>
>>> Sent from my iPhone
>>>
>>> On Feb 1, 2021, at 7:11 PM, Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>> =EF=BB=BF
>>> I'm not convinced anything went wrong in the build of DPDK.  The build
>>> didn't indicate any problems.  But I wouldn't be surprised to find out =
that
>>> things aren't being installed where they are expected.
>>>
>>> In any case, I realized a mistake in my original post which accounts fo=
r
>>> the discrepancy in the location of the library file mentioned in the
>>> error.  I had been fooling with the uhd.conf setting for "dkdk_driver"
>>> which I had changed on one system but not the other.
>>>
>>> And most recently, I accidentally commented out this setting completely
>>> and things seem to be better.  The new error is the following.  Not sur=
e
>>> why I'm getting this error message.  Suggestions welcome.
>>>
>>> EAL: Detected 8 lcore(s)
>>> EAL: Detected 1 NUMA nodes
>>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>> EAL: No free hugepages reported in hugepages-1048576kB
>>> EAL: Probing VFIO support...
>>> EAL: VFIO support initialized
>>> [ERROR] [DPDK] No available DPDK devices (ports) found!
>>> EAL: FATAL: already called initialization.
>>> EAL: already called initialization.
>>>
>>>
>>> On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> On 02/01/2021 06:15 PM, Rob Kossler via USRP-users wrote:
>>>>
>>>> Hi,
>>>> I have 2 systems (each with host PC and N310) for which I'm having
>>>> similar issues in trying to get DPDK up and running.  After going thro=
ugh
>>>> the UHD Manual DPDK instructions and DPDK app note, I am past the poin=
t at
>>>> which the "dpdk-devbind" seems to work fine, but I get the following e=
rror
>>>> when I run benchmark_rate.
>>>>
>>>> I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by
>>>> downloading/building from source. I built UHD (latest 4.0) from source=
 and
>>>> it seemed happy finding DPDK and building with DPDK support. It seems =
like
>>>> a compatibility issue, but I can't figure it out. Any suggestions?
>>>> Rob
>>>>
>>>> // *** this is the error on System 1
>>>> EAL: /usr/local/lib/libdpdk.so: invalid ELF header
>>>> EAL: FATAL: Cannot init plugins
>>>> EAL: Cannot init plugins
>>>>
>>>> // this is the error on System 2 (nearly the same but different librar=
y)
>>>> EAL:
>>>> /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a=
:
>>>> invalid ELF header
>>>> EAL: FATAL: Cannot init plugins
>>>> EAL: Cannot init plugins
>>>>
>>>>
>>>> This would seem to indicate that something very horrible went wrong in
>>>> the build or DPDK--creating ELF headers that aren't correct for the
>>>>  type of hardware they're being used on.
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--0000000000001d714705ba51b01d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4=
.0, Intel XL710 NIC, and N310 (or X310)?<br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 7:54 PM =
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">BTW, here is the output of the dpdk-devbind status. It all looks g=
ood to me.<div><br><div><font face=3D"monospace">root@irisheyes9-Z240-SFF:~=
# dpdk-devbind -s<br><br>Network devices using DPDK-compatible driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:03:00.0 &=
#39;Ethernet Controller XL710 for 40GbE QSFP+ 1584&#39; drv=3Dvfio-pci unus=
ed=3Di40e<br>0000:03:00.1 &#39;Ethernet Controller XL710 for 40GbE QSFP+ 15=
84&#39; drv=3Dvfio-pci unused=3Di40e<br><br>Network devices using kernel dr=
iver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:1f.6 &#39;Ethernet Conne=
ction (2) I219-LM 15b7&#39; if=3Deno1 drv=3De1000e unused=3Dvfio-pci *Activ=
e*<br>0000:03:00.2 &#39;Ethernet Controller XL710 for 40GbE QSFP+ 1584&#39;=
 if=3Dens4f2 drv=3Di40e unused=3Dvfio-pci *Active*<br>0000:03:00.3 &#39;Eth=
ernet Controller XL710 for 40GbE QSFP+ 1584&#39; if=3Dens4f3 drv=3Di40e unu=
sed=3Dvfio-pci *Active*<br></font></div><div><br></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1,=
 2021 at 7:51 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m running as root.=C2=A0 =
Here is the full command I&#39;m using with my N310 and the first part of t=
he resulting output. Note that the ERROR is now a UHD generated error messa=
ge rather than an error message from the DPDK libs.=C2=A0<div><br></div><di=
v>One thing I&#39;m looking into is the &quot;vfio-pci&quot; module.=C2=A0 =
The instructions say to load this via &quot;modprobe vfio-pci&quot; prior t=
o binding the NIC.=C2=A0 But, I didn&#39;t have to do this and it seems tha=
t this module might now be built-in such that it is not necessary. In any c=
ase, the &quot;dpdk-devbind&quot; seems to work fine so maybe I am barking =
up the wrong tree.<br><div><br></div><div><font face=3D"monospace">root@iri=
sheyes9-Z240-SFF:~# benchmark_rate --rx_rate 62.5e6 --tx_rate 62.5e6 --chan=
nels=3D&quot;0,1,2,3&quot; --args=3D&quot;mgmt_addr=3D192.168.1.74,addr=3D1=
92.168.61.2,use_dpdk=3D1&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 9=
.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff<br>EAL: Detected 8 lcore(s)<br=
>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process socket /var/run/dpdk/rte/=
mp_socket<br>EAL: No free hugepages reported in hugepages-1048576kB<br>EAL:=
 Probing VFIO support...<br>EAL: VFIO support initialized<br><font color=3D=
"#ff0000">[ERROR] [DPDK] No available DPDK devices (ports) found!</font><br=
>EAL: FATAL: already called initialization.<br>EAL: already called initiali=
zation.<br></font></div><div><br></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 7:44 PM=
 Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_b=
lank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"auto">Unfortunately that=E2=80=99s=
 one I can=E2=80=99t help with. I don=E2=80=99t have any DPDK capable machi=
nes at my disposal.=C2=A0<div><br></div><div>I vaguely recall that you have=
 to be root for DPDK to work. Perhaps that=E2=80=99s the issue?<br><br><div=
 dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Feb 1, 2021, at 7:11 PM, Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=
=3D"ltr">I&#39;m not convinced anything went wrong in the build of DPDK.=C2=
=A0 The build didn&#39;t indicate any problems.=C2=A0 But I wouldn&#39;t be=
 surprised to find out that things aren&#39;t being installed where they ar=
e expected.=C2=A0=C2=A0<div><br></div><div>In any case, I realized a mistak=
e in my original post which accounts for the discrepancy in the location of=
 the library file mentioned in the error.=C2=A0 I had been fooling with the=
 uhd.conf setting for &quot;dkdk_driver&quot; which I had changed on one sy=
stem but not the other.=C2=A0</div><div><br></div><div>And most recently, I=
 accidentally commented out this setting completely and things seem to be b=
etter.=C2=A0 The new error is the following.=C2=A0 Not sure why I&#39;m get=
ting this error message.=C2=A0 Suggestions welcome.</div><div><br></div><di=
v><font face=3D"monospace">EAL: Detected 8 lcore(s)<br>EAL: Detected 1 NUMA=
 nodes<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: No =
free hugepages reported in hugepages-1048576kB<br>EAL: Probing VFIO support=
...<br>EAL: VFIO support initialized<br><font color=3D"#ff0000">[ERROR] [DP=
DK] No available DPDK devices (ports) found!</font><br>EAL: FATAL: already =
called initialization.<br>EAL: already called initialization.<br></font></d=
iv><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/01/2021 06:15 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi,<br>
        <div>I have 2 systems (each with host PC and N310) for which I&#39;=
m
          having similar issues in trying to get DPDK up and running.=C2=A0
          After going through the UHD Manual DPDK instructions and DPDK
          app note, I am past the point at which the &quot;dpdk-devbind&quo=
t;
          seems to work fine, but I get the following error when I run
          benchmark_rate.</div>
        <div><br>
        </div>
        <div>I am=C2=A0running=C2=A0Ubuntu 20.04.LTS and installed DPDK 18.=
11.11
          by downloading/building from source. I built UHD (latest 4.0)
          from source and it seemed happy finding DPDK and building with
          DPDK support. It seems like a compatibility issue, but I can&#39;=
t
          figure it out. Any suggestions?</div>
        <div>Rob</div>
        <div><br>
        </div>
        <div><font face=3D"monospace">// *** this is the error on System 1<=
/font></div>
        <div><font face=3D"monospace">EAL: /usr/local/lib/libdpdk.so:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">// this is the error on System 2
            (nearly the same but different library)</font></div>
        <div><font face=3D"monospace">EAL:
            /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pm=
d_ark.a:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    This would seem to indicate that something very horrible went wrong
    in the build or DPDK--creating ELF headers that aren&#39;t correct for
    the<br>
    =C2=A0type of hardware they&#39;re being used on.<br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000001d714705ba51b01d--


--===============8868108712573455962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8868108712573455962==--

