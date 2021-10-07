Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6812A424DAD
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 09:05:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAF483850F1
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 03:05:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tRNGkhfd";
	dkim-atps=neutral
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 426DD384941
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 03:05:08 -0400 (EDT)
Received: by mail-il1-f174.google.com with SMTP id k13so5380852ilo.7
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 00:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7j4mZGugcjf9fj4WzGvmfTkTo1O0OU7TpG9sawC9YFU=;
        b=tRNGkhfdXUvcRgmNSSvE6qQJzikE0VDEbu15KdYaXX2dNsco7yzo4DT9J5Cmd/b4pN
         VoOd7wMJ7ZVWp+g/lcYbVjfez2ydjWXpmmweMHJYLMxWAB9iyM2gDpAuWAz4XdgMsLT/
         hwuKZGdkSOcL3ZLcTcI/0NNh2r6WQmCBWXAORyiw7YbqXW5CS9EeZPLcYlkELxacexqT
         WfnKFvIQd6vBxUcnIij81tHHzb1pcpleYA93xDMN9+3FDeKF/EKWddSVoP5SshYs4t8B
         AAzGO700FevCjcXmfh+S1TTfbT7HoFXXu/hCu+Fx+ZttnFK/fnCkILqow1BvAQWWhU+Q
         lspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7j4mZGugcjf9fj4WzGvmfTkTo1O0OU7TpG9sawC9YFU=;
        b=vvoR25cXVcfyR1Bq7/XnK0klr/naYIiA7v2xfGngp2uZaMDLNjBt9aptQKxpcvcjKT
         14pmMc59Av9xC8CdU4CKLU2qNczr6GmI1Zzumg4TlPVyAEfhfKQUahXHfhZNCViN0hyb
         lBgPfks3t3k40ErB2sandf6KGnc4EFOPxP0KqVpLonA4ONyM5uHkBURUWGnYdU0DeRqq
         8BIEmZh+ekEyGjYvoi4iVrGqE9uR5CFphEhN+wCFpsrb9/R31xLCEkUhGxkiQB9olS0M
         8mbtQpHOZ52ixzbgaDoMznNU+Ttz23qmZs1VLag3VU/rQ4Nf+YA4bkSAIzfcmIHNgO1K
         5+vQ==
X-Gm-Message-State: AOAM531g/9MVnntEeNE1xGIOajUZ9X0fgvYNqBPeIwPKabvy9uOpxO71
	GnltcFs6LKH0uD/zQwGcw1Z2LFyyTk48P7VBiRq2L2b5
X-Google-Smtp-Source: ABdhPJy/A38U0n0iVfpjl19Qsifg76HXA/9KOXoDO0xebJRtrIpf6vroRZ2CefaXftngoT6u+i2JnV0cANnvDN/D8Ow=
X-Received: by 2002:a05:6e02:194c:: with SMTP id x12mr1872922ilu.128.1633590307613;
 Thu, 07 Oct 2021 00:05:07 -0700 (PDT)
MIME-Version: 1.0
References: <WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128@lists.ettus.com>
In-Reply-To: <WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 7 Oct 2021 09:04:56 +0200
Message-ID: <CAFOi1A5p61innLuJd5Q8_p--pD6PCKOGgkyZrEBmCZPLwmK9RQ@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: IJ7SNL3QGDQWZCUZBY4CLNBSNB2WV4QH
X-Message-ID-Hash: IJ7SNL3QGDQWZCUZBY4CLNBSNB2WV4QH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building MPM, UHD 4.1 for E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IJ7SNL3QGDQWZCUZBY4CLNBSNB2WV4QH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0022864568972485078=="

--===============0022864568972485078==
Content-Type: multipart/alternative; boundary="000000000000fe814405cdbde136"

--000000000000fe814405cdbde136
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are you using those cmake flags to build MPM, or build UHD?

If you're not modifying MPM (i.e., you just want to upgrade to the latest
official version) we recommend simply updating the filesystem. There
sometimes are more things than MPM that need changing (kernel version,
other libraries, ...) and the filesystem will have everything matching. See
the manual for details:
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_started_fs_=
update

If you do want to compile MPM, I recommend the manual:
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev
It has the correct compiler flags.

--M

On Thu, Sep 16, 2021 at 8:46 PM <thebouleoffools@gmail.com> wrote:

> I think maybe I made progress by running the build multiple times, but no=
w
> when I try to start up the usrp-hwd service, I get:
>
> Traceback (most recent call last):
>
> File "/usr/bin/usrp_hwd.py", line 15, in <module>
>
> import usrp_mpm as mpm
>
> File "/usr/lib/python3.7/site-packages/usrp_mpm/__init__.py", line 19, in
> <module>
>
> from . import libpyusrp_periphs as lib
>
> ImportError:
> /usr/lib/python3.7/site-packages/usrp_mpm/libpyusrp_periphs.so: undefined
> symbol: _ZTIN3uhd16filter_info_baseE
>
>
> I guess I=E2=80=99ll just switch back to 4.0 for now.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fe814405cdbde136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you using those cmake flags to build MPM, or buil=
d UHD?</div><div><br></div><div>If you&#39;re not modifying MPM (i.e., you =
just want to upgrade to the latest official version) we recommend simply up=
dating the filesystem. There sometimes are more things than MPM that need c=
hanging (kernel version, other libraries, ...) and the filesystem will have=
 everything matching. See the manual for details: <a href=3D"https://files.=
ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_started_fs_update">https:=
//files.ettus.com/manual/page_usrp_e3xx.html#e3xx_getting_started_fs_update=
</a></div><div><br></div><div>If you do want to compile MPM, I recommend th=
e manual:<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx=
_software_dev">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_soft=
ware_dev</a></div><div>It has the correct compiler flags.<br></div><div><br=
></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Sep 16, 2021 at 8:46 PM &lt;<a href=3D"mai=
lto:thebouleoffools@gmail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I think maybe I =
made progress by running the build multiple times, but now when I try to st=
art up the usrp-hwd service, I get:</p><p>Traceback (most recent call last)=
:</p><p>  File &quot;/usr/bin/usrp_hwd.py&quot;, line 15, in &lt;module&gt;=
</p><p>    import usrp_mpm as mpm</p><p>  File &quot;/usr/lib/python3.7/sit=
e-packages/usrp_mpm/__init__.py&quot;, line 19, in &lt;module&gt;</p><p>   =
 from . import libpyusrp_periphs as lib</p><p>ImportError: /usr/lib/python3=
.7/site-packages/usrp_mpm/libpyusrp_periphs.so: undefined symbol: _ZTIN3uhd=
16filter_info_baseE</p><p><br></p><p>I guess I=E2=80=99ll just switch back =
to 4.0 for now.</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fe814405cdbde136--

--===============0022864568972485078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0022864568972485078==--
