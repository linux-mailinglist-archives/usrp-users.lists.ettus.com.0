Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAECB2D057A
	for <lists+usrp-users@lfdr.de>; Sun,  6 Dec 2020 15:28:15 +0100 (CET)
Received: from [::1] (port=54802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klv1I-0000B2-Em; Sun, 06 Dec 2020 09:28:12 -0500
Received: from mail-vs1-f51.google.com ([209.85.217.51]:43356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1klv1E-000056-Ep
 for usrp-users@lists.ettus.com; Sun, 06 Dec 2020 09:28:08 -0500
Received: by mail-vs1-f51.google.com with SMTP id r24so248229vsg.10
 for <usrp-users@lists.ettus.com>; Sun, 06 Dec 2020 06:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1H/dZ+xdtOPq8Ofng1ygOq8oq2LJTFvUZCtjxlQjVc8=;
 b=eih4apaNV7VY9HdiQfK1CWByXwYcZTz1rtxgGOwGbXWOf6V7Pj0w5eSlv4T5U83dxC
 M1DfQAt7De3ekV0UnSNh58s3p8i8DRkbTmz21yEG8aFHTOIXKkPGGbf7y7Rg0qCatOw2
 vvyzStr9SONhRAbYFeGniBwDsooteRgvZfvzw1J2BxD6oaPGEkDBG55kYFFSZLjuPDdt
 +nEYAAPlzOYoROM2QPn6c1P80RnBEEBU/O5mQ6VzuLeX3zjCyS1W7xhYSBRatZXwwlnd
 jfmLyQI8cXXsKI7v5CDejMxqDpxYkXbsDYM70SlmAnieH4WEvNIlwsjzWrXfttvZ5Xdh
 ZB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1H/dZ+xdtOPq8Ofng1ygOq8oq2LJTFvUZCtjxlQjVc8=;
 b=sADuLuPsMwiM6escZOz5P/YcVJp1jTOpAUwYEa4QBznXm+/W9qt2v2WImL/MiF64e1
 olJmBqBYIPJzWK7JRxaOMrriZ6T+lEy0c7qikSS8/kxcBNiwxZECf5KwZa7+mP05IYC0
 aJnis/NiAkpjJM07U6OLBI1dAi9MAMEcMQrAxgw+BAXjQQi7rHNhns5GZdWeyQZh+9sN
 1UfnvBT5Qo4HuGAcD9REpuKjdBv0+B+rNlTd1yxPq070i+jzd1KBYy0shi/eJI8rQigV
 +Wd0tV+uTS5NnI+T+kuixDPNQJPgMDQzOpSbjW3DCT6aG5OJp46bGj6G5FNEAVFjktvg
 3FAw==
X-Gm-Message-State: AOAM532ybDH1fXU8YRCe5f8b8AhqUGIzZqx32mNoJlrWjeXzBjad9/1U
 gzP5n4eAoH5zZRNfZWXvG2o2VmHVvLYC1qt8ftgP/ChnrS8tMg==
X-Google-Smtp-Source: ABdhPJzqsOESEezxQb3r8QoG+knqUyBFoZ4rvKkRUur/NSlBllMgHHC7hOy57S8UijsdfsWyZjzgDjNyAPD5KOP4hh0=
X-Received: by 2002:a67:80d3:: with SMTP id b202mr10628491vsd.2.1607264847512; 
 Sun, 06 Dec 2020 06:27:27 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
 <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
 <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
In-Reply-To: <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
Date: Sun, 6 Dec 2020 09:27:16 -0500
Message-ID: <CAKx8PBjjDas_yuBxOgM6O8R1zqgZUiYavqFfidu87n1_qEsDrA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============2272064394167643188=="
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

--===============2272064394167643188==
Content-Type: multipart/alternative; boundary="0000000000004bc74d05b5cc827d"

--0000000000004bc74d05b5cc827d
Content-Type: text/plain; charset="UTF-8"

Issue appears to be with the compiler that is included in Zeus (gcc 9.x vs
8.x) and an interaction with fftw.  There is an open issue with fftw (
https://github.com/FFTW/fftw3/issues/213) and a request to the yocto folks
to request they consider adding back gcc-8.3 to zeus + dunfell (
https://bugzilla.yoctoproject.org/show_bug.cgi?id=14144) until this can be
better resolved.  I think data point 3 confirms this as I did not include
options to enable neon when I compiled.

On Wed, Nov 11, 2020 at 1:39 PM Ben Magistro <koncept1@gmail.com> wrote:

> Adding some more data points.
>
> 1) I've been trying to rebuild meta-ettus-v4 with debug enabled but am
> hitting an issue with image size and can't seem to get past that.  It says
> I should increase `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is
> larger but increasing this seems to have no effect.  I am using the ettus
> docker image for oe-builder with the command
> `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
> debug portion I've added a few lines to `build/conf/local.conf` to add the
> packages.  I'm open to suggestions to build the image with debug symbols
> and provide additional feedback.
>
> 2) I put together a simple flowgraph, UHD source --> frequency xlating fft
> --> null sink.  This also segfaults, no guarantees that I got the
> parameters correct.
>
> 3) Since the issues seem to be with fftw, I decided to try building my own
> copy of fftw mostly to get debug symbols and continue troubleshooting.  For
> this I used `./configure --enable-debug --enable-shared --enable-threads
> --enable-float` and `make CFLAGS="-ggdb"`.  These options are best guesses
> right now since I didn't look at the layers to see what parameters it is
> using (assuming it is in one of the layers).  Using this build with `export
> LD_LIBRARY_PATH=/usr/local/lib/` I do not get a segfault with gr-ais or the
> above flowgraph but I also don't get the expected output which makes me
> question the parameters I used to build it.  Output wise I get a string of
> "D" or "O" to the console.
>
> Thanks
>
> Ben
>
> On Thu, Nov 5, 2020 at 9:22 AM Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> Hi Ben - This issue has been reported to R&D internally. If you wish to
>> create a public-facing UHD issue on our Github tracker please go ahead & do
>> so, and tag me on it so that we can keep track of it internally. - MLD
>>
>> On Wed, Nov 4, 2020 at 11:25 PM Ben Magistro via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Is anyone else using meta-ettus-v4.0.0.0 yet?  if so, have you had any
>>> issues with libfftw?
>>>
>>> Using the image on an E310, adding a single OOT module (gr-ais) and
>>> trying to run an app distributed with it, the app segfaults.  To further
>>> troubleshoot, I added gdb and it comes back with the following.  I have a
>>> separate development host that has gnuradio 3.8 setup using pybombs and do
>>> not experience this issue there.
>>>
>>> Thread 1 "python3" received signal SIGSEGV, Segmentation fault.
>>> 0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3
>>>
>>> To compile, I've needed to override PYTHON_EXECUTABLE as it points to a
>>> non-existent path in /home/oe-builder.... in
>>> /usr/lib/cmake/gnuradio/GnuradioConfig.cmake.  To run I also needed to
>>> define LD_EXPORT_PATH pointing to /usr/local/lib/.
>>>
>>> Thanks in advance.
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000004bc74d05b5cc827d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Issue appears to be with the compiler that is included in =
Zeus (gcc 9.x vs 8.x) and an interaction with fftw.=C2=A0 There is an open =
issue with fftw (<a href=3D"https://github.com/FFTW/fftw3/issues/213">https=
://github.com/FFTW/fftw3/issues/213</a>) and a request to the yocto folks t=
o request they consider adding back gcc-8.3 to zeus=C2=A0+ dunfell=C2=A0(<a=
 href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14144">https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D14144</a>) until this can be b=
etter resolved.=C2=A0 I think data point 3 confirms this as I did not inclu=
de options to enable neon when I compiled.</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 11, 2020 at 1:39 PM B=
en Magistro &lt;<a href=3D"mailto:koncept1@gmail.com">koncept1@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Adding some more data points.</div><div><br></div><div>1=
) I&#39;ve been trying to rebuild meta-ettus-v4 with debug enabled but am h=
itting an issue with image size and can&#39;t seem to get past that.=C2=A0 =
It says I should increase `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size=
 is larger but increasing this seems to have no effect.=C2=A0 I am using th=
e ettus docker image for oe-builder with the command `./meta-ettus/contrib/=
build_imgs_package.sh e310_sg3 v4.0.0.0`.=C2=A0 For the debug portion I&#39=
;ve added a few lines to `build/conf/local.conf` to add the packages.=C2=A0=
 I&#39;m open to suggestions to build the image with debug symbols and prov=
ide additional feedback.</div><div><br></div><div>2) I put together a simpl=
e flowgraph, UHD source --&gt; frequency xlating fft --&gt; null sink.=C2=
=A0 This also segfaults, no guarantees that I got the parameters correct.</=
div><div><br></div><div>3) Since the issues seem to be with fftw, I decided=
 to try building my own copy of fftw mostly to get debug symbols and contin=
ue troubleshooting.=C2=A0 For this I used `./configure --enable-debug --ena=
ble-shared --enable-threads --enable-float` and `make CFLAGS=3D&quot;-ggdb&=
quot;`.=C2=A0 These options are best guesses right now since I didn&#39;t l=
ook at the layers to see what parameters it is using (assuming it is in one=
 of the layers).=C2=A0 Using this build with `export LD_LIBRARY_PATH=3D/usr=
/local/lib/` I do not get a segfault with gr-ais or the above flowgraph but=
 I also don&#39;t get the expected output which makes me question the param=
eters I used to build it.=C2=A0 Output wise I get a string of &quot;D&quot;=
 or &quot;O&quot; to the console.</div><div><br></div><div>Thanks</div><div=
><br></div><div>Ben<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 5, 2020 at 9:22 AM Michael Dicken=
s &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michae=
l.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ben - This issue ha=
s been reported to R&amp;D internally. If you wish to create a public-facin=
g UHD issue on our Github tracker please go ahead &amp; do so, and tag me o=
n it so that we can keep track of it internally. - MLD<br><br></div><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 20=
20 at 11:25 PM Ben Magistro via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Is anyone else using meta-ettus-v4.0.0.0 yet?=C2=A0 if so, have yo=
u had any issues with libfftw?<br></div><div><br></div><div>Using the image=
 on an E310, adding a single OOT module (gr-ais) and trying to run an app d=
istributed with it, the app segfaults.=C2=A0 To further troubleshoot, I add=
ed gdb and it comes back with the following.=C2=A0 I have a separate develo=
pment host that has gnuradio 3.8 setup using pybombs and do not experience =
this issue there.<br></div><div><br></div><div>Thread 1 &quot;python3&quot;=
 received signal SIGSEGV, Segmentation fault.<br>0xb6947836 in ?? () from /=
usr/lib/libfftw3f.so.3</div><div><br></div><div>To compile, I&#39;ve needed=
 to override PYTHON_EXECUTABLE as it points to a non-existent path in /home=
/oe-builder.... in /usr/lib/cmake/gnuradio/GnuradioConfig.cmake.=C2=A0 To r=
un I also needed to define LD_EXPORT_PATH pointing to /usr/local/lib/.</div=
><div><br></div><div>Thanks in advance.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000004bc74d05b5cc827d--


--===============2272064394167643188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2272064394167643188==--

