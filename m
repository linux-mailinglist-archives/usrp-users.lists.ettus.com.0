Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C12AF85D
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 19:44:13 +0100 (CET)
Received: from [::1] (port=50338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcv3c-00070L-PX; Wed, 11 Nov 2020 13:41:24 -0500
Received: from mail-vs1-f52.google.com ([209.85.217.52]:33000)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kcv3D-0006vk-PU
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 13:40:59 -0500
Received: by mail-vs1-f52.google.com with SMTP id z123so1752732vsb.0
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 10:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1vTsDfU6c462rlH6kQMym0/pGEmAtXvLdcJ4HOYqIS4=;
 b=YT5cVOc5VcyZIkUe2HgX4vkGkPcW6HhPNQtPPXbFItySB9VP5E8kumactaYxDlwRET
 UX0vX/0fcLBj439lrGaMlg+lXuiOWCDNlPyJq5on6wE3N4k1Hxy0BrxPYsY505lDvDu/
 CCRFjfE7ktFht8Du5bWwkETAx2Kfthzmh3hwM7JnaoP+bgMETdAfORHqhb9i7sJ4dEQc
 eSEbvxviuU58WvhIuDDEvHoKfYbUAn89vU1sBVS7SZsX83yzzjARMJMeoZjSAxwsHp9E
 3tJOPx4L1TA7wTIC5+YqTND9c4q0YN8k3KXicYEdazj/BF0XyKZQ41Eu6eGsRGg+LMvu
 0VxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1vTsDfU6c462rlH6kQMym0/pGEmAtXvLdcJ4HOYqIS4=;
 b=YCJJ5p3qVYh6jalaNa+UOtg/jSILGJiSARUS9AMm18/W2ijvmatJonj0wFiAovFJNi
 7469MaS2zJc7RCoswwJ7ska+DmGRBI2junAs6rYGb7wev9wvSsNC+VHQkCzmq9s1byNh
 E/1Q9IU7Me335/u9lTcWeRoYsd+yju77UgIylwbAbwQHLxUqdeo0knGlzHX/8+vTtrhC
 M+sI1U0PhvTR5lLwIcO7Cp3/V7Yq+KbJy7SvryoRa+YIavmg9yXn71Lzb4pIGKmFp/cj
 /1gU7w2RvLp5wVfgtOBCuWq53THXaal9cHbhct390/ZBDNA+biOMYy8ClqmC/Khow3kd
 vZNA==
X-Gm-Message-State: AOAM530QTO/1poKvMqeY+hpjSiP+tKJOnfy9hopYM6OjtlpTnXEcYOwU
 YdQd6VZlgNMj3rcuCaG359cbXCXN1oipW7u02ks=
X-Google-Smtp-Source: ABdhPJxXzUFclwDKRAcC++fqv/nGmKD1NbvNW2hwluKg7UdGhtve7toUt4LTn4z2yFsbLC1S8rFpqR4VLETjTB4E+mI=
X-Received: by 2002:a67:1e02:: with SMTP id e2mr15655741vse.59.1605119958872; 
 Wed, 11 Nov 2020 10:39:18 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
 <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
In-Reply-To: <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
Date: Wed, 11 Nov 2020 13:39:07 -0500
Message-ID: <CAKx8PBgNoL6bAf8o-hXr0HnJnNaAj5XknPF5RPamY3Cs_hYCEg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6414057285297434946=="
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

--===============6414057285297434946==
Content-Type: multipart/alternative; boundary="000000000000f87be105b3d91cd2"

--000000000000f87be105b3d91cd2
Content-Type: text/plain; charset="UTF-8"

Adding some more data points.

1) I've been trying to rebuild meta-ettus-v4 with debug enabled but am
hitting an issue with image size and can't seem to get past that.  It says
I should increase `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is
larger but increasing this seems to have no effect.  I am using the ettus
docker image for oe-builder with the command
`./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
debug portion I've added a few lines to `build/conf/local.conf` to add the
packages.  I'm open to suggestions to build the image with debug symbols
and provide additional feedback.

2) I put together a simple flowgraph, UHD source --> frequency xlating fft
--> null sink.  This also segfaults, no guarantees that I got the
parameters correct.

3) Since the issues seem to be with fftw, I decided to try building my own
copy of fftw mostly to get debug symbols and continue troubleshooting.  For
this I used `./configure --enable-debug --enable-shared --enable-threads
--enable-float` and `make CFLAGS="-ggdb"`.  These options are best guesses
right now since I didn't look at the layers to see what parameters it is
using (assuming it is in one of the layers).  Using this build with `export
LD_LIBRARY_PATH=/usr/local/lib/` I do not get a segfault with gr-ais or the
above flowgraph but I also don't get the expected output which makes me
question the parameters I used to build it.  Output wise I get a string of
"D" or "O" to the console.

Thanks

Ben

On Thu, Nov 5, 2020 at 9:22 AM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Ben - This issue has been reported to R&D internally. If you wish to
> create a public-facing UHD issue on our Github tracker please go ahead & do
> so, and tag me on it so that we can keep track of it internally. - MLD
>
> On Wed, Nov 4, 2020 at 11:25 PM Ben Magistro via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Is anyone else using meta-ettus-v4.0.0.0 yet?  if so, have you had any
>> issues with libfftw?
>>
>> Using the image on an E310, adding a single OOT module (gr-ais) and
>> trying to run an app distributed with it, the app segfaults.  To further
>> troubleshoot, I added gdb and it comes back with the following.  I have a
>> separate development host that has gnuradio 3.8 setup using pybombs and do
>> not experience this issue there.
>>
>> Thread 1 "python3" received signal SIGSEGV, Segmentation fault.
>> 0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3
>>
>> To compile, I've needed to override PYTHON_EXECUTABLE as it points to a
>> non-existent path in /home/oe-builder.... in
>> /usr/lib/cmake/gnuradio/GnuradioConfig.cmake.  To run I also needed to
>> define LD_EXPORT_PATH pointing to /usr/local/lib/.
>>
>> Thanks in advance.
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000f87be105b3d91cd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Adding some more data points.</div><div><br></div><di=
v>1) I&#39;ve been trying to rebuild meta-ettus-v4 with debug enabled but a=
m hitting an issue with image size and can&#39;t seem to get past that.=C2=
=A0 It says I should increase `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual =
size is larger but increasing this seems to have no effect.=C2=A0 I am usin=
g the ettus docker image for oe-builder with the command `./meta-ettus/cont=
rib/build_imgs_package.sh e310_sg3 v4.0.0.0`.=C2=A0 For the debug portion I=
&#39;ve added a few lines to `build/conf/local.conf` to add the packages.=
=C2=A0 I&#39;m open to suggestions to build the image with debug symbols an=
d provide additional feedback.</div><div><br></div><div>2) I put together a=
 simple flowgraph, UHD source --&gt; frequency xlating fft --&gt; null sink=
.=C2=A0 This also segfaults, no guarantees that I got the parameters correc=
t.</div><div><br></div><div>3) Since the issues seem to be with fftw, I dec=
ided to try building my own copy of fftw mostly to get debug symbols and co=
ntinue troubleshooting.=C2=A0 For this I used `./configure --enable-debug -=
-enable-shared --enable-threads --enable-float` and `make CFLAGS=3D&quot;-g=
gdb&quot;`.=C2=A0 These options are best guesses right now since I didn&#39=
;t look at the layers to see what parameters it is using (assuming it is in=
 one of the layers).=C2=A0 Using this build with `export LD_LIBRARY_PATH=3D=
/usr/local/lib/` I do not get a segfault with gr-ais or the above flowgraph=
 but I also don&#39;t get the expected output which makes me question the p=
arameters I used to build it.=C2=A0 Output wise I get a string of &quot;D&q=
uot; or &quot;O&quot; to the console.</div><div><br></div><div>Thanks</div>=
<div><br></div><div>Ben<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 5, 2020 at 9:22 AM Michael Dic=
kens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ben - This issue has been reported=
 to R&amp;D internally. If you wish to create a public-facing UHD issue on =
our Github tracker please go ahead &amp; do so, and tag me on it so that we=
 can keep track of it internally. - MLD<br><br></div><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 11:25 PM =
Ben Magistro via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Is any=
one else using meta-ettus-v4.0.0.0 yet?=C2=A0 if so, have you had any issue=
s with libfftw?<br></div><div><br></div><div>Using the image on an E310, ad=
ding a single OOT module (gr-ais) and trying to run an app distributed with=
 it, the app segfaults.=C2=A0 To further troubleshoot, I added gdb and it c=
omes back with the following.=C2=A0 I have a separate development host that=
 has gnuradio 3.8 setup using pybombs and do not experience this issue ther=
e.<br></div><div><br></div><div>Thread 1 &quot;python3&quot; received signa=
l SIGSEGV, Segmentation fault.<br>0xb6947836 in ?? () from /usr/lib/libfftw=
3f.so.3</div><div><br></div><div>To compile, I&#39;ve needed to override PY=
THON_EXECUTABLE as it points to a non-existent path in /home/oe-builder....=
 in /usr/lib/cmake/gnuradio/GnuradioConfig.cmake.=C2=A0 To run I also neede=
d to define LD_EXPORT_PATH pointing to /usr/local/lib/.</div><div><br></div=
><div>Thanks in advance.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000f87be105b3d91cd2--


--===============6414057285297434946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6414057285297434946==--

