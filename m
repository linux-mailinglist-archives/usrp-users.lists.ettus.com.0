Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B0ABCB19
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 17:21:07 +0200 (CEST)
Received: from [::1] (port=38388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCmcf-0005s1-Pt; Tue, 24 Sep 2019 11:21:01 -0400
Received: from mail-ua1-f51.google.com ([209.85.222.51]:39030)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jbmsdr@gmail.com>) id 1iCmcb-0005mf-MZ
 for usrp-users@lists.ettus.com; Tue, 24 Sep 2019 11:20:57 -0400
Received: by mail-ua1-f51.google.com with SMTP id b14so685183uap.6
 for <usrp-users@lists.ettus.com>; Tue, 24 Sep 2019 08:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=SRy++v1CLGx1qf5txnj4WdhfT10VSwwePg2ot/uNYSc=;
 b=b1TanyxkP+4DqNVa8fVG5527h2+ROG2i55sAi30sNgtJuzCFqt1VD9ifiH29MiB6gZ
 7P2ORv1wNr4EosIoij7RTAtuDWlNCvu2AcCifoQ5zcF4RzAbBzCBhUueC0HwLHNA1B59
 Je+GizJiF6kS68RH25NkMSt8dGAMrZG/eQeOv46BaJy9QS1/ksFX/zOav1hYcngvTRSI
 pegIRRzxQoX6RKsDj+YmUlFR7raOL7Zdz32AD1F9MH++fD/7JFbaPCz3bWoM4MirCyA8
 Xq4Gr0irub82jxkfYfXEwDv7PwSSVHH5VdvcE8BL0SoFAGwTYR5pmMjMeY/QkXNaOzm8
 r5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=SRy++v1CLGx1qf5txnj4WdhfT10VSwwePg2ot/uNYSc=;
 b=IQBu7ewV5eLXDVilgmtxy3tM9GDPfOAcFNxIAQ70JD5Evd3d9i+GmBnmIFPSjQhgoM
 FrN+zsqv5r6zy9lZXrbE79drhJ4iglby/InzToWHu3EkKvyl2rSmMMqMvc1NQjXBzruN
 GvW5lOnM3y1MCDG73FPkxTeJHMWmr2cKx3ejKITd4s4jw2/4ZQuI/0nGDnGm/LGQXI3z
 e3I42FboDdtBefIjbPUIbYj9NmtP61wEBY31fpwd3Jg5EqvEhC+6M3OVNugp+Ac310k0
 g6sCqPH6C/iXQhHnwgZ0uIKobo8js9COvPYot1qE2RJHUocZGXe5XxAewnfB7EcfQ4Tf
 PUGQ==
X-Gm-Message-State: APjAAAWhFwrQkwT2ZNKvQqgpX2inuzCqXh/j9RqMmEknR9slIauLStpE
 w7M6SDSIkEUOMiMB4tMGktEeGj5/H+JSVXyJjE60DowI
X-Google-Smtp-Source: APXvYqxLK5kIaLti9dIn4Bu+SkPpwfUh0O0EIu+D5uVv/pwOJCiP5wiMFX67wy3DWy/O0P3rSHg791/6pyyEzcrJ2zk=
X-Received: by 2002:ab0:2b0a:: with SMTP id e10mr1761439uar.4.1569338416716;
 Tue, 24 Sep 2019 08:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <CA+1FM8oh1UuYRK17G11j0sfX1Utt-APuZvysaPEiMRS5z2vqwg@mail.gmail.com>
In-Reply-To: <CA+1FM8oh1UuYRK17G11j0sfX1Utt-APuZvysaPEiMRS5z2vqwg@mail.gmail.com>
Date: Tue, 24 Sep 2019 11:20:05 -0400
Message-ID: <CA+1FM8pW_Gi3Ttef0z=mwCZB-vzVtJG7Y_DG4Q=kdtgMMxRyog@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Building UHD with DPDK support
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Content-Type: multipart/mixed; boundary="===============4422349788299796383=="
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

--===============4422349788299796383==
Content-Type: multipart/alternative; boundary="000000000000dc5f2105934e12b1"

--000000000000dc5f2105934e12b1
Content-Type: text/plain; charset="UTF-8"

Got further in getting UHD DPDK set up - to get past the UHD compilation
required setting up the DPDK configuration file and installing to
/usr/local/
CONFIG_RTE_BUILD_SHARED_LIB=y
sudo make install DESTDIR=/usr/local T=x86_64-native-linuxapp-gcc -j60

However, UHD is not able to gain access to the device.  I am guessing that
I don't have DPDK set up correctly, or my processor doesn't support some
required features.

uhd_rx_cfile -r 100000000 -N 100000000 -f 915000000
--args="addr=192.168.93.2,use_dpdk=1" tmp
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.14.1.1-3-g6a11a141
EAL: Detected 60 lcore(s)
EAL: Probing VFIO support...
EAL: Cannot obtain physical addresses: No such file or directory. Only vfio
will function.
EAL: Failed to create shared memory!
EAL: FATAL: Cannot init memory

EAL: Cannot init memory

On Mon, Sep 23, 2019 at 12:35 PM Josh <jbmsdr@gmail.com> wrote:

> Hello,
>
> I'm in the process of building UHD with DPDK support, and run into the
> following build error:
>
> ../lib/libuhd.so.3.15.0: undefined reference to `numa_available'
> ../lib/libuhd.so.3.15.0: undefined reference to `get_mempolicy'
> ../lib/libuhd.so.3.15.0: undefined reference to `numa_set_localalloc'
> ../lib/libuhd.so.3.15.0: undefined reference to `numa_bitmask_free'
> ../lib/libuhd.so.3.15.0: undefined reference to `set_mempolicy'
> ../lib/libuhd.so.3.15.0: undefined reference to `numa_allocate_nodemask'
> ../lib/libuhd.so.3.15.0: undefined reference to `numa_set_preferred'
>
> DPDK 17.11 is installed on my system from source, and CMake finds it, but
> once I kick off the UHD build (either 3.14 or master) I get the errors
> shown above when it is linking libraries to libuhd.
>
> Any help would be appreciated.
>
> Thanks,
> Josh
>
>
>

--000000000000dc5f2105934e12b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font size=3D"4">Got further in getting UHD DPDK set =
up - to get past the UHD compilation required setting up the DPDK configura=
tion file and installing to /usr/local/</font></div><div><font style=3D"fon=
t-family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"=
3" face=3D"Calibri,Helvetica,sans-serif" color=3D"black"><span style=3D"fon=
t-size:12pt" id=3D"gmail-divtagdefaultwrapper">CONFIG_RTE_BUILD_SHARED_LIB=
=3Dy</span></font></div><div><font style=3D"font-family:Calibri,Helvetica,s=
ans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Calibri,Helvetica=
,sans-serif" color=3D"black"><span style=3D"font-size:12pt" id=3D"gmail-div=
tagdefaultwrapper"><font style=3D"font-family:Calibri,Helvetica,sans-serif,=
serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Calibri,Helvetica,sans-seri=
f" color=3D"black"><span style=3D"font-size:12pt" id=3D"gmail-divtagdefault=
wrapper">sudo make install DESTDIR=3D/usr/local T=3Dx86_64-native-linuxapp-=
gcc -j60</span></font></span></font></div><div><font style=3D"font-family:C=
alibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D=
"Calibri,Helvetica,sans-serif" color=3D"black"><span style=3D"font-size:12p=
t" id=3D"gmail-divtagdefaultwrapper"><font style=3D"font-family:Calibri,Hel=
vetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Calibri,H=
elvetica,sans-serif" color=3D"black"><span style=3D"font-size:12pt" id=3D"g=
mail-divtagdefaultwrapper"><br></span></font></span></font></div><div><font=
 style=3D"font-family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFont&qu=
ot;" size=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"black"><span=
 style=3D"font-size:12pt" id=3D"gmail-divtagdefaultwrapper"><font style=3D"=
font-family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=
=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"black"><span style=3D=
"font-size:12pt" id=3D"gmail-divtagdefaultwrapper">However, UHD is not able=
 to gain access to the device.=C2=A0 I am guessing that I don&#39;t have DP=
DK set up correctly, or my processor doesn&#39;t support some required feat=
ures.=C2=A0 <br></span></font></span></font></div><div><font style=3D"font-=
family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3"=
 face=3D"Calibri,Helvetica,sans-serif" color=3D"black"><span style=3D"font-=
size:12pt" id=3D"gmail-divtagdefaultwrapper"><font style=3D"font-family:Cal=
ibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"C=
alibri,Helvetica,sans-serif" color=3D"black"><span style=3D"font-size:12pt"=
 id=3D"gmail-divtagdefaultwrapper"><br></span></font></span></font></div><d=
iv>uhd_rx_cfile -r 100000000 -N 100000000 -f 915000000 --args=3D&quot;addr=
=3D192.168.93.2,use_dpdk=3D1&quot; tmp<br>[INFO] [UHD] linux; GNU C++ versi=
on 5.4.0 20160609; Boost_105800; UHD_3.14.1.1-3-g6a11a141<br>EAL: Detected =
60 lcore(s)<br>EAL: Probing VFIO support...<br>EAL: Cannot obtain physical =
addresses: No such file or directory. Only vfio will function.<br>EAL: Fail=
ed to create shared memory!<br>EAL: FATAL: Cannot init memory<br><br>EAL: C=
annot init memory<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Sep 23, 2019 at 12:35 PM Josh &lt;<a hre=
f=3D"mailto:jbmsdr@gmail.com">jbmsdr@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,<=
/div><div><br></div><div>I&#39;m in the process of building UHD with DPDK s=
upport, and run into the following build error:</div><div><br></div><div>..=
/lib/libuhd.so.3.15.0: undefined reference to `numa_available&#39;<br>../li=
b/libuhd.so.3.15.0: undefined reference to `get_mempolicy&#39;<br>../lib/li=
buhd.so.3.15.0: undefined reference to `numa_set_localalloc&#39;<br>../lib/=
libuhd.so.3.15.0: undefined reference to `numa_bitmask_free&#39;<br>../lib/=
libuhd.so.3.15.0: undefined reference to `set_mempolicy&#39;<br>../lib/libu=
hd.so.3.15.0: undefined reference to `numa_allocate_nodemask&#39;<br>../lib=
/libuhd.so.3.15.0: undefined reference to `numa_set_preferred&#39;</div><di=
v><br></div><div>DPDK 17.11 is installed on my system from source, and CMak=
e finds it, but once I kick off the UHD build (either 3.14 or master) I get=
 the errors shown above when it is linking libraries to libuhd.</div><div><=
br></div><div>Any help would be appreciated.<br></div><div><br></div><div>T=
hanks,</div><div>Josh<br></div><div><br></div><div><br></div></div>
</blockquote></div>

--000000000000dc5f2105934e12b1--


--===============4422349788299796383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4422349788299796383==--

