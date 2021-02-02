Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B28DD30B3E8
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 01:12:03 +0100 (CET)
Received: from [::1] (port=39588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6jIV-0007C3-6L; Mon, 01 Feb 2021 19:11:59 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:39091)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l6jIS-00075S-4q
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 19:11:56 -0500
Received: by mail-oi1-f177.google.com with SMTP id w124so20897813oia.6
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 16:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vBrAxYqzbSid1NydimqjnO5VF72a8bH+Hyw7fl5IwPk=;
 b=KCAuH4Yaep0c2CjWnhvgCtIzWMPvU+ZBNIBxD6DCX2JB9TexxONOWG6wU5RW7Sm6L4
 nm8gd5sx7+Ed7qhsRq3/qM8VS6N0+n/4HWA2vaJy353VaXZquFADCubneFw4F+oplgvE
 4hKbo4xZeQq5LGVK9gp0zBL3BOp+Mj1b4gbcpE5xKB2Wqm3FhCynycIyvBtBGua2tuMP
 z2xjonqszjlyNtM6P/g2NalnWtg+/5Tqvwi3GqpgQ7vj/9IhAIPkgr0FkJNmpP80nxnm
 elotLLK2zNWnt9MLMlAmk/s+VRKybLvac/psTTVyQ7A8X+XvTlv7zwAFS2aweDdwRDl5
 L9tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBrAxYqzbSid1NydimqjnO5VF72a8bH+Hyw7fl5IwPk=;
 b=mlfj6QEGSmOBFejhGXNKqm/rOgh4kBfpEHkycaEvdzNromO4Ybfa7/+19HTHEfXEfh
 s9VMFytCDuHcgzBmwdzG2oCuzheOLaxGpHRYo5n9xe7iftAY6x4JP+Z0gVO+u8+Ry6Le
 Pbl5ogaPYjpk/7hFUw4CS2gRumJlLdzuCz5DPTrSsHOz7RetHb9DCm+CyBpCFvOPr3tQ
 2+f52jzKG3YFqUViFb9B1FjvDlUU9YvN2nO3i6QvUWwxuQGg/PAryo2clnQCRMstAGbe
 VeUAICvOPzLeioOSQsexpVT8QcgQK6OWu8+iuL22JYrvzb6R6GwvlG3w1/95D8fEJdUZ
 uJZA==
X-Gm-Message-State: AOAM532keBCp47ytkcxwLIYt0uZ9164xUQ6oTFPBF67aY4tvr45ODPn0
 F/GLN8Kdsh/ZjfMjE1O8tXakgpKexIi1RCq28SWm0g==
X-Google-Smtp-Source: ABdhPJyA+9h92DXBEvplRHBsUJQVZkv6umf4C3ImiS+gkJ1zUNBQEyUJANurQX4oulBskCU+LSfSbgF0vA/c3ng+53A=
X-Received: by 2002:aca:5504:: with SMTP id j4mr929700oib.150.1612224675173;
 Mon, 01 Feb 2021 16:11:15 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQTdZiv5WNa-wEU7vUPZMC9+_+LQP0j36ijaEgM4jHyJw@mail.gmail.com>
 <60188D3A.6080508@gmail.com>
In-Reply-To: <60188D3A.6080508@gmail.com>
Date: Mon, 1 Feb 2021 19:11:04 -0500
Message-ID: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3884416869872772626=="
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

--===============3884416869872772626==
Content-Type: multipart/alternative; boundary="00000000000010102705ba4f4fc0"

--00000000000010102705ba4f4fc0
Content-Type: text/plain; charset="UTF-8"

I'm not convinced anything went wrong in the build of DPDK.  The build
didn't indicate any problems.  But I wouldn't be surprised to find out that
things aren't being installed where they are expected.

In any case, I realized a mistake in my original post which accounts for
the discrepancy in the location of the library file mentioned in the
error.  I had been fooling with the uhd.conf setting for "dkdk_driver"
which I had changed on one system but not the other.

And most recently, I accidentally commented out this setting completely and
things seem to be better.  The new error is the following.  Not sure why
I'm getting this error message.  Suggestions welcome.

EAL: Detected 8 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
[ERROR] [DPDK] No available DPDK devices (ports) found!
EAL: FATAL: already called initialization.
EAL: already called initialization.


On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 02/01/2021 06:15 PM, Rob Kossler via USRP-users wrote:
>
> Hi,
> I have 2 systems (each with host PC and N310) for which I'm having similar
> issues in trying to get DPDK up and running.  After going through the UHD
> Manual DPDK instructions and DPDK app note, I am past the point at which
> the "dpdk-devbind" seems to work fine, but I get the following error when I
> run benchmark_rate.
>
> I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by
> downloading/building from source. I built UHD (latest 4.0) from source and
> it seemed happy finding DPDK and building with DPDK support. It seems like
> a compatibility issue, but I can't figure it out. Any suggestions?
> Rob
>
> // *** this is the error on System 1
> EAL: /usr/local/lib/libdpdk.so: invalid ELF header
> EAL: FATAL: Cannot init plugins
> EAL: Cannot init plugins
>
> // this is the error on System 2 (nearly the same but different library)
> EAL:
> /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a:
> invalid ELF header
> EAL: FATAL: Cannot init plugins
> EAL: Cannot init plugins
>
>
> This would seem to indicate that something very horrible went wrong in the
> build or DPDK--creating ELF headers that aren't correct for the
>  type of hardware they're being used on.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000010102705ba4f4fc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not convinced anything went wrong in the build of =
DPDK.=C2=A0 The build didn&#39;t indicate any problems.=C2=A0 But I wouldn&=
#39;t be surprised to find out that things aren&#39;t being installed where=
 they are expected.=C2=A0=C2=A0<div><br></div><div>In any case, I realized =
a mistake in my original post which accounts for the discrepancy in the loc=
ation of the library file mentioned in the error.=C2=A0 I had been fooling =
with the uhd.conf setting for &quot;dkdk_driver&quot; which I had changed o=
n one system but not the other.=C2=A0</div><div><br></div><div>And most rec=
ently, I accidentally commented out this setting completely and things seem=
 to be better.=C2=A0 The new error is the following.=C2=A0 Not sure why I&#=
39;m getting this error message.=C2=A0 Suggestions welcome.</div><div><br><=
/div><div><font face=3D"monospace">EAL: Detected 8 lcore(s)<br>EAL: Detecte=
d 1 NUMA nodes<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>=
EAL: No free hugepages reported in hugepages-1048576kB<br>EAL: Probing VFIO=
 support...<br>EAL: VFIO support initialized<br><font color=3D"#ff0000">[ER=
ROR] [DPDK] No available DPDK devices (ports) found!</font><br>EAL: FATAL: =
already called initialization.<br>EAL: already called initialization.<br></=
font></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
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

--00000000000010102705ba4f4fc0--


--===============3884416869872772626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3884416869872772626==--

