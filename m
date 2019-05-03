Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF021337F
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 20:07:56 +0200 (CEST)
Received: from [::1] (port=56664 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMcbA-0007Oc-NV; Fri, 03 May 2019 14:07:52 -0400
Received: from mail-it1-f169.google.com ([209.85.166.169]:40164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sdormian@eng.ucsd.edu>)
 id 1hMcac-0007IS-3r
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 14:07:48 -0400
Received: by mail-it1-f169.google.com with SMTP id k64so10367560itb.5
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 11:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Wv43nRiFtJMGY4OJclaXlXXM9W52sa0XsjDzrANWwr8=;
 b=IK8iuPJc6rNh6Cd6wVzi6nr9XnhXvVKJJOIrvzbI89/oBYpnVbGjos9NHso87oyOYA
 aSUmCwWyDsxAPf6/a6VJ2uO3f2iQ+qps+zheggXohN4XFv40/qUTEp0KQ3SMRKmLAs3H
 V+ohv1lbB90/chJK7bPFl0ITdvieHs2tBQBps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Wv43nRiFtJMGY4OJclaXlXXM9W52sa0XsjDzrANWwr8=;
 b=gXTY4hOttSyCvhqoXZmxd+n3lXshK3YKYgeGW9kiYvLFRc8MYDN3AYUUbpOIe5EoVk
 yr6afnVwqRm+Y+FcNOlbG5XjTlLb4dIlgQKOKsnOGtfMcgALIEMS9M2uxHLWNu9QySAk
 9xCCOs+MrKYFzzfYvzDBgvuAHcXKMfmmeiiBFYetpCRLjaypK8AGw/znUgrKFqnQ6kcW
 Dx0fbrDYNI5MyFKVvNdVAtreSPnndJ7Ojxd3Sdfo4AnBoxiSKfrtTNXcNhUd761bgqwp
 O8feDLTDbXjn60Ws/Pbz9XUrTLhqf0Cg3HaF0cQsfQ857gPXEGnqLDqAfOvwjOKWRYok
 vyOg==
X-Gm-Message-State: APjAAAUbSha/Kc/xK+jaZZ3uSYiE4qt0ka3Jbh+I6WBhbBu/PoNB0O5w
 Ce0lG5bmbd95tZ/mFvaF/3kftvVYYJ4ZMexRjZwnJis8
X-Google-Smtp-Source: APXvYqwpqyHaGSSzV7O3u1Zw8iu220qZ9AgwIw9iPdW2jVo4nqIavSOpwDu5/7OrpLYvfl4qAum7R9757lWVOzJuHzc=
X-Received: by 2002:a02:8585:: with SMTP id d5mr8299039jai.69.1556906796976;
 Fri, 03 May 2019 11:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <a2218c8e-0152-7af7-18d0-510ca262887c@eurecom.fr>
In-Reply-To: <a2218c8e-0152-7af7-18d0-510ca262887c@eurecom.fr>
Date: Fri, 3 May 2019 11:06:02 -0700
Message-ID: <CANaxSio==1LQaT-GkZpknTN+wDoU+UNQLf-R6XoMKg42DrGeiQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Problems updating FPGA on N300
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
From: Ali Dormiani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ali Dormiani <sdormian@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============4416332361605008948=="
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

--===============4416332361605008948==
Content-Type: multipart/alternative; boundary="000000000000951f190587ff9cea"

--000000000000951f190587ff9cea
Content-Type: text/plain; charset="UTF-8"

I don't think updating the FPGA from the root of the N300 is the way to fix
this.


Use your host machine to have a normal connection to the N300 via Ethernet
management port (DHCP or static IP).

Once you have a connection that functions (uhd_find_devices executed from
host or test with 'ping' command), update the FPGA by executing
uhd_image_loader from the host.


The SFP+ ports do not have a traditional "NIC" chip. The hardware
controller 'lives' on the FPGA. Because both are non-functioning and
internal root uhd_find_devices has no idea what device it is, I believe
your current FPGA image is corrupted.

No worrying though. Just re-flash the FPGA from a host machine and all
should be fine.

On Fri, May 3, 2019 at 12:38 AM Florian Kaltenberger via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> We have been using the N310 for a while and recently we got some N300, but
> I am having trouble getting them to work. They boot up fine and I can
> connect to them via ssh over the management port, but that's it (can't
> connect through the SFP+ ports, neither 1Gbit not 10Gbit). When I do
> "uhd_find_devices" from within the N300, I get the following message
>
> root@ni-n3xx-317DD7D:~# uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> UHD_3.13.1.0-0-gbbce3e45
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: n/a
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: n/a
>     type: n/a
>
> So I was thinking there is a bad FPGA image and I tried updating using
> "uhd_image_loader" but that doesn't work either
>
>
> root@ni-n3xx-317DD7D:~# uhd_image_loader --args "type=n3xx,fpga=HG"
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> UHD_3.13.1.0-0-gbbce3e45
> No applicable UHD devices found
>
> And advice anyone?
>
> Florian.
> --
> Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>,
> LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter
> <https://twitter.com/osalliance5g>!
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000951f190587ff9cea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t think updating the FPGA from the root of =
the N300 is the way to fix this.</div><div><br></div><div><br></div><div>Us=
e your host machine to have a normal connection to the N300 via Ethernet ma=
nagement port (DHCP or static IP).<br></div><div><br></div><div>Once you ha=
ve a connection that functions (uhd_find_devices executed from host or test=
 with &#39;ping&#39; command), update the FPGA by executing uhd_image_loade=
r from the host.</div><div><br></div><div><br></div><div>The SFP+ ports do =
not have a traditional &quot;NIC&quot; chip. The hardware controller &#39;l=
ives&#39; on the FPGA. Because both are non-functioning and internal root u=
hd_find_devices has no idea what device it is, I believe your current FPGA =
image is corrupted.</div><div><br></div><div>No worrying though. Just re-fl=
ash the FPGA from a host machine and all should be fine.<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, M=
ay 3, 2019 at 12:38 AM Florian Kaltenberger via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hello,</p>
    <p>We have been using the N310 for a while and recently we got some
      N300, but I am having trouble getting them to work. They boot up
      fine and I can connect to them via ssh over the management port,
      but that&#39;s it (can&#39;t connect through the SFP+ ports, neither =
1Gbit
      not 10Gbit). When I do &quot;uhd_find_devices&quot; from within the N=
300, I
      get the following message</p>
    <p>root@ni-n3xx-317DD7D:~# uhd_find_devices <br>
      [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
      UHD_3.13.1.0-0-gbbce3e45<br>
      --------------------------------------------------<br>
      -- UHD Device 0<br>
      --------------------------------------------------<br>
      Device Address:<br>
      =C2=A0=C2=A0=C2=A0 serial: n/a<br>
      =C2=A0=C2=A0=C2=A0 claimed: False<br>
      =C2=A0=C2=A0=C2=A0 mgmt_addr: 127.0.0.1<br>
      =C2=A0=C2=A0=C2=A0 product: n/a<br>
      =C2=A0=C2=A0=C2=A0 type: n/a<br>
      <br>
      So I was thinking there is a bad FPGA image and I tried updating
      using &quot;uhd_image_loader&quot; but that doesn&#39;t work either</=
p>
    <p><br>
      root@ni-n3xx-317DD7D:~# uhd_image_loader --args
      &quot;type=3Dn3xx,fpga=3DHG&quot;<br>
      [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
      UHD_3.13.1.0-0-gbbce3e45<br>
      No applicable UHD devices found<br>
    </p>
    <p>And advice anyone?</p>
    <p>Florian.<br>
    </p>
    <div class=3D"gmail-m_-7549865941723004353moz-signature">-- <br>
     =20
     =20
      Follow us on <a href=3D"https://plus.google.com/+OpenairinterfaceOrg"=
 target=3D"_blank">Google+</a>,
      <a href=3D"https://www.linkedin.com/company/openairinterface" target=
=3D"_blank">LinkedIn</a>,
      or <a href=3D"https://twitter.com/osalliance5g" target=3D"_blank">Twi=
tter</a>!<br>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000951f190587ff9cea--


--===============4416332361605008948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4416332361605008948==--

