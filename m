Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F3A145D67
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 21:58:59 +0100 (CET)
Received: from [::1] (port=43944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuN5W-0003Gj-F3; Wed, 22 Jan 2020 15:58:58 -0500
Received: from mail-lf1-f45.google.com ([209.85.167.45]:43335)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iuN5S-0003AM-Gv
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 15:58:54 -0500
Received: by mail-lf1-f45.google.com with SMTP id 9so648278lfq.10
 for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2020 12:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gpNx8HfoqRtQYu94SnDF7TlJgDwaFRSG+CA9Pdjzw60=;
 b=o7PV86d/GbZb8NZouf6XI9ywN/Kl8xKzH+qkdMmVC8teFcisi5IJNkwvbLlL6BwY2X
 jD0CKd7JCoXwiAkssM323nqg5meW1ogpYbykzRPIjJXo18MR8EoKl2KO9XSjBcJesAIL
 Yq0DZquTxNqrbBEGdKva96cQkQqB5Wxx20RUiLUpMF64GOgPOdncbvVboxOntamr6r9H
 52uvRYVf84aUyG5vKt8Ivsyyj6ieUq3SPZ9zIDTNQaR/ufsbRjJC3TdkxwaQWgGkiiNg
 4iFwVPKvOMp8lGm9fKsj2+UqFxwDqTCSjZOrZGlIsBSVWoOWi4sVX8JkyXbY7l4872Dr
 D5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gpNx8HfoqRtQYu94SnDF7TlJgDwaFRSG+CA9Pdjzw60=;
 b=YR2TbqtV0Df8I8myWJt95GPtBA+KwXOi3K6zSZGlUpyB3WpDTiluglFM8WfUfm5AKk
 3N966jCmP4g+eXB6fwZcTSmegZKPNxo3kryO1PxQwGKU80P4Dq0rr19odDZaZyurRaxk
 QMV/GZ2u7rePpmIhPXNyMU0BpHu3MCtyaGUblx1vbsqo+qVY/kCYrAFTQIvRAqtH9wLI
 11uLztt18n5GdYiqHFQqW/nV3/7eKR/w1oSuG/Um/2KoPwtTA2Q3LuzaN26JlxNHovhX
 xWRsN1R7YItkRBbi2hXFhN7o6FEcfRYUpK2h4cb0VFLmkBddbCaPNgxqpL3OsiUMl0Gs
 5x9Q==
X-Gm-Message-State: APjAAAVtR3+j25LgqBw3egda5nVfozYry2DDrhldoefXuwB1DX+v1yC/
 azzlVYKtmDj3iA1OVdtl0JSGBewQvM5Y6PI+xr8=
X-Google-Smtp-Source: APXvYqzgVyvX4HG6EkftlDotTXSx8rTxSb1iK7hHm9o+gbn37SfBboN7OSJqmJirU6Jl9v4AAQ2/xYBCkD0kxGKOpLI=
X-Received: by 2002:ac2:4436:: with SMTP id w22mr2734388lfl.185.1579726693155; 
 Wed, 22 Jan 2020 12:58:13 -0800 (PST)
MIME-Version: 1.0
References: <CANQ3h38sFEJXws1oHg6tJLiAaoRic8J6rs=JJRBkRLM_TccJPA@mail.gmail.com>
 <5E28B3FC.1080205@gmail.com>
In-Reply-To: <5E28B3FC.1080205@gmail.com>
Date: Wed, 22 Jan 2020 15:58:00 -0500
Message-ID: <CANQ3h3_ncNfM9dDUjheTq_7=PtqAdMog5XYEW_587MjDbwmTtQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] UHD installation, image download fails,
 unhandled exception
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8517560482410683036=="
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

--===============8517560482410683036==
Content-Type: multipart/alternative; boundary="0000000000006346bc059cc0c8f9"

--0000000000006346bc059cc0c8f9
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus, I was able to fix it by changing my network, as you
suggested.

Regards,
Saeid

On Wed, Jan 22, 2020 at 3:44 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 01/22/2020 03:37 PM, Saeid Hashemi via USRP-users wrote:
>
> Hello everyone,
>
> During the installation of UHD, I get an unhandled exception when
> downloading images. The resulting output is shown below. Any advice or help
> would be greatly appreciated.
>
> Thank you
> Saeid
>
>
>
>
>
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Suggested packages:
>   gnuradio
> The following NEW packages will be installed:
>   libuhd-dev libuhd003 uhd-host
> 0 upgraded, 3 newly installed, 0 to remove and 238 not upgraded.
> Need to get 0 B/10.6 MB of archives.
> After this operation, 51.3 MB of additional disk space will be used.
> Selecting previously unselected package libuhd-dev.
> (Reading database ... 195896 files and directories currently installed.)
> Preparing to unpack .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
> Selecting previously unselected package libuhd003:amd64.
> Preparing to unpack .../libuhd003_3.13.0.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
> Replaced by files in installed package libuhd3.14.1:amd64
> (3.14.1.1-0ubuntu1~bionic1) ...
> Selecting previously unselected package uhd-host.
> Preparing to unpack .../uhd-host_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...
> Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
> Setting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...
> Setting up uhd-host (3.14.1.1-0ubuntu1~bionic1) ...
> net.core.rmem_max = 50000000
> net.core.wmem_max = 1048576
> Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...
> Processing triggers for libc-bin (2.27-3ubuntu1) ...
> Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> uhd-host is already the newest version (3.14.1.1-0ubuntu1~bionic1).
> 0 upgraded, 0 newly installed, 0 to remove and 238 not upgraded.
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
> Creating an empty one.
> 00006 kB / 00006 kB (100%) usrp1_b100_fw_default-g6bea23d.zip
> 19756 kB / 19756 kB (100%) x3xx_x310_fpga_default-gbb85bdff.zip
> 02757 kB / 02757 kB (100%) usrp2_n210_fpga_default-g6bea23d.zip
> 02131 kB / 02131 kB (100%) n230_n230_fpga_default-gbb85bdff.zip
> 00522 kB / 00522 kB (100%) usrp1_b100_fpga_default-g6bea23d.zip
> [ERROR] Downloader raised an unhandled exception: HTTPConnectionPool(host='
> files.ettus.com', port=80): Max retries exceeded with url:
> /binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
> (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at
> 0x7f66b46ec890>: Failed to establish a new connection: [Errno 110]
> Connection timed out',))
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
> build have failed
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> This looks like a network issue--it cannot connect to files.ettus.com
>
> Said issue must be local to you, since I just tried this and it's working
> fine--so the Ettus server is working properly, you have a local
>   networking issue.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006346bc059cc0c8f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Marcus, I was able to fix it by changing my=
 network, as you suggested.</div><div><br></div><div>Regards,</div><div>Sae=
id<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Jan 22, 2020 at 3:44 PM Marcus D. Leech via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 01/22/2020 03:37 PM, Saeid Hashemi
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hello everyone,</div>
        <div><br>
          <div>During the installation of UHD, I get an unhandled
            exception when downloading images. The resulting output is
            shown below. Any advice or help would be greatly
            appreciated.</div>
          <div><br>
          </div>
          <div>Thank you</div>
          <div>Saeid</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div><span style=3D"font-family:monospace">Reading package
              lists... Done<br>
              Building dependency tree =C2=A0 =C2=A0 =C2=A0 <br>
              Reading state information... Done<br>
              Suggested packages:<br>
              =C2=A0 gnuradio<br>
              The following NEW packages will be installed:<br>
              =C2=A0 libuhd-dev libuhd003 uhd-host<br>
              0 upgraded, 3 newly installed, 0 to remove and 238 not
              upgraded.<br>
              Need to get 0 B/10.6 MB of archives.<br>
              After this operation, 51.3 MB of additional disk space
              will be used.<br>
              Selecting previously unselected package libuhd-dev.<br>
              (Reading database ... 195896 files and directories
              currently installed.)<br>
              Preparing to unpack
              .../libuhd-dev_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Selecting previously unselected package libuhd003:amd64.<br>
              Preparing to unpack
              .../libuhd003_3.13.0.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...<br>
              Replaced by files in installed package libuhd3.14.1:amd64
              (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Selecting previously unselected package uhd-host.<br>
              Preparing to unpack
              .../uhd-host_3.14.1.1-0ubuntu1~bionic1_amd64.deb ...<br>
              Unpacking uhd-host (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Setting up libuhd-dev (3.14.1.1-0ubuntu1~bionic1) ...<br>
              Setting up uhd-host (3.14.1.1-0ubuntu1~bionic1) ...<br>
              net.core.rmem_max =3D 50000000<br>
              net.core.wmem_max =3D 1048576<br>
              Setting up libuhd003:amd64 (3.13.0.1-0ubuntu1~bionic1) ...<br=
>
              Processing triggers for libc-bin (2.27-3ubuntu1) ...<br>
              Processing triggers for man-db (2.8.3-2ubuntu0.1) ...<br>
              Reading package lists... Done<br>
              Building dependency tree =C2=A0 =C2=A0 =C2=A0 <br>
              Reading state information... Done<br>
              uhd-host is already the newest version
              (3.14.1.1-0ubuntu1~bionic1).<br>
              0 upgraded, 0 newly installed, 0 to remove and 238 not
              upgraded.<br>
              [INFO] Images destination: /usr/share/uhd/images<br>
              [INFO] No inventory file found at
              /usr/share/uhd/images/inventory.json. Creating an empty
              one.<br>
              00006 kB / 00006 kB (100%)
              usrp1_b100_fw_default-g6bea23d.zip<br>
              19756 kB / 19756 kB (100%)
              x3xx_x310_fpga_default-gbb85bdff.zip<br>
              02757 kB / 02757 kB (100%)
              usrp2_n210_fpga_default-g6bea23d.zip<br>
              02131 kB / 02131 kB (100%)
              n230_n230_fpga_default-gbb85bdff.zip<br>
              00522 kB / 00522 kB (100%)
              usrp1_b100_fpga_default-g6bea23d.zip<br>
              [ERROR] Downloader raised an unhandled exception:
              HTTPConnectionPool(host=3D&#39;<a href=3D"http://files.ettus.=
com" target=3D"_blank">files.ettus.com</a>&#39;,
              port=3D80): Max retries exceeded with url:
              /binaries/cache//b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gb=
b85bdff.zip
              (Caused by
              NewConnectionError(&#39;&lt;urllib3.connection.HTTPConnection
              object at 0x7f66b46ec890&gt;: Failed to establish a new
              connection: [Errno 110] Connection timed out&#39;,))<br>
              You can run this again with the &#39;--verbose&#39; flag to s=
ee
              more information<br>
              If the problem persists, please email the output to: <a href=
=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>
              build have failed</span><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    This looks like a network issue--it cannot connect to
    <a href=3D"http://files.ettus.com" target=3D"_blank">files.ettus.com</a=
><br>
    <br>
    Said issue must be local to you, since I just tried this and it&#39;s
    working fine--so the Ettus server is working properly, you have a
    local<br>
    =C2=A0 networking issue.<br>
    <br>
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

--0000000000006346bc059cc0c8f9--


--===============8517560482410683036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8517560482410683036==--

