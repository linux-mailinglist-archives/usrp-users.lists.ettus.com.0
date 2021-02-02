Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 135B630B450
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 01:52:19 +0100 (CET)
Received: from [::1] (port=39832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6jvU-000132-RV; Mon, 01 Feb 2021 19:52:16 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:41194)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l6jvR-0000tb-6y
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 19:52:13 -0500
Received: by mail-oi1-f181.google.com with SMTP id m13so20950928oig.8
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 16:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ovHoP6Unm7n+kVw8sXPn9Qm49ry9Xxr9csmU51nort8=;
 b=kj35NJ/wEMwK8SDtJrcM6aIMzNbkuVVYtNVCANZ+wM9C4G8Uy/e4j6zemA+RhoM6Pi
 9vVhFI+UqzZLB+wIg3rgdm5ame08VMMncqWRKPjwg+aQDfOItH8ePW4ZIa5WZE50dw7p
 kzNFViOJ8muVKwFwqoTvtsplgsor1cQJwKle5MAs2uATyOhSrJaLJs4+g5iQNdaYYNM1
 Vf/GbME9gDI8+gPn5FRHr4/D3Blima1wBn/cOCzZ55e1AtRVhZi8REX01DhvSwi8HT01
 NQ0B9X5tzDBdUgeHmyyadciniQWYvwa/Qj8aVBcKyTwT4KzKX5+NsGsNvSXQabWIirSf
 K8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ovHoP6Unm7n+kVw8sXPn9Qm49ry9Xxr9csmU51nort8=;
 b=ryU7v0BZYNZp4BP+Rbhry+VP440BVdGICB6ThRBJqJZFP980KBCbvnNOA3d6bWSHlm
 VkcUNFo9lFmXMOnvJa5ALIlUET8bKvTMg/iYaC8nzyRXlSmxzQ3GK9hkPyipBDWixlqh
 zCyVprZP7kvwQl9c5ruf4AjiAr1Qq3ty1gqA1wISWmyyPViAW2knh3v9ydTTNFP8rtTi
 gm36jdiKSGYGzWUvMXdfZXIAcF9ypHV8Nvpmgn8gdMx1A7DJzO/RzMy87eqeGojht7O6
 pwiNnIuPBDcPfl9dXB41snvwL3PpWB5IMtDaFFxNxVZS0ZoSTfZUgyiC8AFmb+fN08VG
 4cbQ==
X-Gm-Message-State: AOAM533n/UiM20+3uMS1kl2i2lNm6Z1VWhKv6NfjwyJgQ3chv7opYxxm
 L0EaBod/l9YLPG977dga9QbwNbR8dobLWF/r6qFOJg==
X-Google-Smtp-Source: ABdhPJyxlAyBLMARmwq9KX0BaY6OJwqpu4pg8e+RuaPwn4Epqf7hxPlvZ7/r1CS9RQ/V48jommpOiGk+tXrurKRb5s0=
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr1027085oih.33.1612227092091; 
 Mon, 01 Feb 2021 16:51:32 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
In-Reply-To: <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
Date: Mon, 1 Feb 2021 19:51:21 -0500
Message-ID: <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============0811168246764829822=="
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

--===============0811168246764829822==
Content-Type: multipart/alternative; boundary="0000000000001f64e205ba4fdfc1"

--0000000000001f64e205ba4fdfc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm running as root.  Here is the full command I'm using with my N310 and
the first part of the resulting output. Note that the ERROR is now a UHD
generated error message rather than an error message from the DPDK libs.

One thing I'm looking into is the "vfio-pci" module.  The instructions say
to load this via "modprobe vfio-pci" prior to binding the NIC.  But, I
didn't have to do this and it seems that this module might now be built-in
such that it is not necessary. In any case, the "dpdk-devbind" seems to
work fine so maybe I am barking up the wrong tree.

root@irisheyes9-Z240-SFF:~# benchmark_rate --rx_rate 62.5e6 --tx_rate
62.5e6 --channels=3D"0,1,2,3"
--args=3D"mgmt_addr=3D192.168.1.74,addr=3D192.168.61.2,use_dpdk=3D1"

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-50-ge520e3ff
EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
[ERROR] [DPDK] No available DPDK devices (ports) found!
EAL: FATAL: already called initialization.
EAL: already called initialization.


On Mon, Feb 1, 2021 at 7:44 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Unfortunately that=E2=80=99s one I can=E2=80=99t help with. I don=E2=80=
=99t have any DPDK capable
> machines at my disposal.
>
> I vaguely recall that you have to be root for DPDK to work. Perhaps that=
=E2=80=99s
> the issue?
>
> Sent from my iPhone
>
> On Feb 1, 2021, at 7:11 PM, Rob Kossler <rkossler@nd.edu> wrote:
>
> =EF=BB=BF
> I'm not convinced anything went wrong in the build of DPDK.  The build
> didn't indicate any problems.  But I wouldn't be surprised to find out th=
at
> things aren't being installed where they are expected.
>
> In any case, I realized a mistake in my original post which accounts for
> the discrepancy in the location of the library file mentioned in the
> error.  I had been fooling with the uhd.conf setting for "dkdk_driver"
> which I had changed on one system but not the other.
>
> And most recently, I accidentally commented out this setting completely
> and things seem to be better.  The new error is the following.  Not sure
> why I'm getting this error message.  Suggestions welcome.
>
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> [ERROR] [DPDK] No available DPDK devices (ports) found!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
>
>
> On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 02/01/2021 06:15 PM, Rob Kossler via USRP-users wrote:
>>
>> Hi,
>> I have 2 systems (each with host PC and N310) for which I'm having
>> similar issues in trying to get DPDK up and running.  After going throug=
h
>> the UHD Manual DPDK instructions and DPDK app note, I am past the point =
at
>> which the "dpdk-devbind" seems to work fine, but I get the following err=
or
>> when I run benchmark_rate.
>>
>> I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by
>> downloading/building from source. I built UHD (latest 4.0) from source a=
nd
>> it seemed happy finding DPDK and building with DPDK support. It seems li=
ke
>> a compatibility issue, but I can't figure it out. Any suggestions?
>> Rob
>>
>> // *** this is the error on System 1
>> EAL: /usr/local/lib/libdpdk.so: invalid ELF header
>> EAL: FATAL: Cannot init plugins
>> EAL: Cannot init plugins
>>
>> // this is the error on System 2 (nearly the same but different library)
>> EAL:
>> /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a:
>> invalid ELF header
>> EAL: FATAL: Cannot init plugins
>> EAL: Cannot init plugins
>>
>>
>> This would seem to indicate that something very horrible went wrong in
>> the build or DPDK--creating ELF headers that aren't correct for the
>>  type of hardware they're being used on.
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000001f64e205ba4fdfc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m running as root.=C2=A0 Here is the full command I&=
#39;m using with my N310 and the first part of the resulting output. Note t=
hat the ERROR is now a UHD generated error message rather than an error mes=
sage from the DPDK libs.=C2=A0<div><br></div><div>One thing I&#39;m looking=
 into is the &quot;vfio-pci&quot; module.=C2=A0 The instructions say to loa=
d this via &quot;modprobe vfio-pci&quot; prior to binding the NIC.=C2=A0 Bu=
t, I didn&#39;t have to do this and it seems that this module might now be =
built-in such that it is not necessary. In any case, the &quot;dpdk-devbind=
&quot; seems to work fine so maybe I am barking up the wrong tree.<br><div>=
<br></div><div><font face=3D"monospace">root@irisheyes9-Z240-SFF:~# benchma=
rk_rate --rx_rate 62.5e6 --tx_rate 62.5e6 --channels=3D&quot;0,1,2,3&quot; =
--args=3D&quot;mgmt_addr=3D192.168.1.74,addr=3D192.168.61.2,use_dpdk=3D1&qu=
ot;<br><br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0=
.0.0-50-ge520e3ff<br>EAL: Detected 8 lcore(s)<br>EAL: Detected 1 NUMA nodes=
<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: No free h=
ugepages reported in hugepages-1048576kB<br>EAL: Probing VFIO support...<br=
>EAL: VFIO support initialized<br><font color=3D"#ff0000">[ERROR] [DPDK] No=
 available DPDK devices (ports) found!</font><br>EAL: FATAL: already called=
 initialization.<br>EAL: already called initialization.<br></font></div><di=
v><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Feb 1, 2021 at 7:44 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto=
">Unfortunately that=E2=80=99s one I can=E2=80=99t help with. I don=E2=80=
=99t have any DPDK capable machines at my disposal.=C2=A0<div><br></div><di=
v>I vaguely recall that you have to be root for DPDK to work. Perhaps that=
=E2=80=99s the issue?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 1, 2021, at 7:11 PM, Rob =
Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@n=
d.edu</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><d=
iv dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">I&#39;m not convinced anything wen=
t wrong in the build of DPDK.=C2=A0 The build didn&#39;t indicate any probl=
ems.=C2=A0 But I wouldn&#39;t be surprised to find out that things aren&#39=
;t being installed where they are expected.=C2=A0=C2=A0<div><br></div><div>=
In any case, I realized a mistake in my original post which accounts for th=
e discrepancy in the location of the library file mentioned in the error.=
=C2=A0 I had been fooling with the uhd.conf setting for &quot;dkdk_driver&q=
uot; which I had changed on one system but not the other.=C2=A0</div><div><=
br></div><div>And most recently, I accidentally commented out this setting =
completely and things seem to be better.=C2=A0 The new error is the followi=
ng.=C2=A0 Not sure why I&#39;m getting this error message.=C2=A0 Suggestion=
s welcome.</div><div><br></div><div><font face=3D"monospace">EAL: Detected =
8 lcore(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process socket /var/=
run/dpdk/rte/mp_socket<br>EAL: No free hugepages reported in hugepages-1048=
576kB<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br><=
font color=3D"#ff0000">[ERROR] [DPDK] No available DPDK devices (ports) fou=
nd!</font><br>EAL: FATAL: already called initialization.<br>EAL: already ca=
lled initialization.<br></font></div><div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at =
6:23 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

--0000000000001f64e205ba4fdfc1--


--===============0811168246764829822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0811168246764829822==--

