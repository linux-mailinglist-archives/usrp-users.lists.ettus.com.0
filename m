Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 756CE3F6C27
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 01:22:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC14E385206
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 19:22:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="hRgeyLA0";
	dkim-atps=neutral
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DB4B385241
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 19:21:16 -0400 (EDT)
Received: by mail-ua1-f54.google.com with SMTP id x6so9819248uai.11
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 16:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vlWWhiU04ZEfb4yX/XTLbig4jiL8QujUsxaeNePBE4o=;
        b=hRgeyLA0sN1+npw/x0VjJHdaICMeMEH3BXYc1BeJJ6Q1TRXML3XaI8susGd6BJEWJL
         bRvQycfrz71gnZDDBhSX+whWeExEhgHYRoyM8K4rZ6enjrwpc2/nnFSGXRBh/Yb+Le9f
         yOkfzOF4hpHDkkLDNXjI/bgnwmx/0/NlgoX1C+VIpafnJrWmWIrCJXs0DzeME6c/VqK5
         8V+7z66YwBu22Rp8SWulTSs8GkhBNt3aJPP8giKcV9ln2g+ee0Fs13m9B9x7NGHomrde
         +Xdxn9Anq4Um764c2Mn37OKQlGcUfdRtKpoi/EjQScXjpgGPVtl20RGlQ5xtoIm79GLo
         KF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vlWWhiU04ZEfb4yX/XTLbig4jiL8QujUsxaeNePBE4o=;
        b=dBj9tU5AWwRuAy4lj6RfuGzX9ql6H4a/4csby0RmiLvAvTBernxSq89su4B/S5X1ky
         M9kKUgt1/Ey0HRFZGdPt813fkoTZfbPFnYWVM1KoslbDctir7vVAUbeXRvZGd+3nGmqa
         gzEL80jcHUr9BraNP3fyRq3ZQPzEpIJ6+t9v1jEA23lSKUKiBNPzGL/DPgdTk9cVl6CE
         Yf4OT8n5IZwbD+eAqFKZ+XrlScBWNEV9LgLFXc3SlscJkBKu/p2TYD+ixiHM+fsYPfqX
         7u+YyQG3x00iQ6/D1IBB7jTqVWsEsbdR/gBPw5oyIgIYFYTk1XqizEDXIANKfZf+9Bp4
         bz0g==
X-Gm-Message-State: AOAM533jN+rIIgBG7QR7qG6SCyUKjPyAyUVaAoFmU6R3gZ/F4n0cqB5A
	lTXd/DX9MdMsJR3K5vPRSgm8IVZ/1ypWtanPnWKL3CJD
X-Google-Smtp-Source: ABdhPJzXH7orDQKuNhnjkJvY0yORfB44yQfcMxdo2UqCmDqdqkKOLLbb+voktNOktYpvtijHjZxmKsWBXNkaqHx9V/A=
X-Received: by 2002:a05:6102:c8b:: with SMTP id f11mr29450159vst.27.1629847276555;
 Tue, 24 Aug 2021 16:21:16 -0700 (PDT)
MIME-Version: 1.0
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
 <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
 <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
 <983558461.158295.1629821292551@mail.yahoo.com> <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com>
 <1502691808.229735.1629837681660@mail.yahoo.com>
In-Reply-To: <1502691808.229735.1629837681660@mail.yahoo.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 24 Aug 2021 19:20:40 -0400
Message-ID: <CAL7q81tixB=BxZvRuLuJcOq1KNFpALzumZjWr7tR4AAv_NQo9A@mail.gmail.com>
To: Tellrell White <t_whit_87@yahoo.com>
Message-ID-Hash: ONVG7GDBJIIQUPRDYU7S4PRXERU474YU
X-Message-ID-Hash: ONVG7GDBJIIQUPRDYU7S4PRXERU474YU
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ONVG7GDBJIIQUPRDYU7S4PRXERU474YU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1205342610781815507=="

--===============1205342610781815507==
Content-Type: multipart/alternative; boundary="000000000000f52b0505ca566311"

--000000000000f52b0505ca566311
Content-Type: text/plain; charset="UTF-8"

Hi Tellrell,

Do not use the Xilinx SDK, only the Yocto one, i.e.
/usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi

You need to source the
"environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi" file before cross
compiling. If you use cmake with building your application, you also need
to set the flag "-DCMAKE_TOOLCHAIN_FILE=<path to
UHD>/host/cmake/Toolchains/oe-sdk_cross.cmake".

Also, if you just want to run the UHD example, it already exists on the
N310's root file system at:
/usr/lib/uhd/examples/rfnoc_replay_samples_from_file

Jonathon

On Tue, Aug 24, 2021 at 4:42 PM Tellrell White via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I'm trying to compile the source code using SDK 2019.1. I'm pointing the
> the SDK project to the directory for sysroot and also to the directory for
> my linux toolchain which are the following
>
> /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi
>
>
> /tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf
>
> I continue to get the following error stating that these files can't be
> found, however, they do exist. And, when I try adding them within the
> project and refreshing nothing happens.
>
>
> cannot find /lib/ld-linux-armhf.so.3
>
> cannot find /lib/libc.so.6
>
> cannot find /usr/lib/libc_nonshared.a
>
> Am I going about building this application correctly? I thought that
> linking my project to sysroot which I installed for the n310 and to the SDK
> toolchain( maybe I'm doing this incorrectly) would be pretty
> straightforward.
>
>
>
>
>
>
>
>
>
>
> On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D. Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> On 2021-08-24 12:08 p.m., Tellrell White wrote:
>
> Yep. Marcus you caught it!! That worked. Do I need to complete the
> sections on "Compiling MPM Natively" and "Building UHD"?? I understand that
> I need the cross-compiler for compiling SW for the device but I don't see
> the need for completing the other two parts. Is there something additional
> that needs to be done other than cross compiling on the host machine and
> ssh'ing over the executable?
>
>
> As far as I know, you should be able to just cross-compile the code you're
> interested in.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f52b0505ca566311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tellrell,<div><br></div><div>Do not use the Xilinx SDK,=
 only the Yocto one, i.e.=C2=A0<span style=3D"font-size:13px;font-family:&q=
uot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">/usr/local/share/uhd/i=
mages/y/</span><span style=3D"font-size:13px;font-family:&quot;Helvetica Ne=
ue&quot;,Helvetica,Arial,sans-serif">sysroots/cortexa9t2hf-neon-oe-</span><=
span style=3D"font-size:13px;font-family:&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">linux-gnueabi</span></div><div><br></div><div>You need=
 to source the &quot;environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi&q=
uot;=C2=A0file before cross compiling. If you use cmake with building your =
application, you also need to set the flag &quot;-DCMAKE_TOOLCHAIN_FILE=3D&=
lt;path to UHD&gt;/host/cmake/Toolchains/oe-sdk_cross.cmake&quot;.</div><di=
v><br></div><div>Also, if you just want to run the UHD example, it already =
exists on the N310&#39;s root file system at: /usr/lib/uhd/examples/rfnoc_r=
eplay_samples_from_file</div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug =
24, 2021 at 4:42 PM Tellrell White via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-=
family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px=
"><div></div>
        <div dir=3D"ltr">I&#39;m trying to compile the source code using SD=
K 2019.1. I&#39;m pointing the the SDK project to the directory for sysroot=
 and also to the directory for my linux toolchain which are the following</=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr"> <span>/usr/local/share/uhd=
/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi<span><br></span></spa=
n></div><div dir=3D"ltr"><span><span><br></span></span></div><div dir=3D"lt=
r"><span><span>/tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnuea=
bi/arm-linux-gnueabihf</span></span></div><div dir=3D"ltr"><span><span><br>=
</span></span></div><div dir=3D"ltr"><span><span>I continue to get the foll=
owing error stating that these files can&#39;t be found, however, they do e=
xist. And, when I try adding them within the project and refreshing nothing=
 happens. <br></span></span></div><div dir=3D"ltr"><span><span><br></span><=
/span></div><div><span></span><br><div>cannot find /lib/ld-linux-armhf.so.3=
=C2=A0=C2=A0 <br></div><br><div dir=3D"ltr"><div><div>cannot find /lib/libc=
.so.6=C2=A0=C2=A0=C2=A0 <br></div><div><br><div>cannot find /usr/lib/libc_n=
onshared.a=C2=A0=C2=A0=C2=A0 <br></div><div><br></div><div dir=3D"ltr">Am I=
 going about building this application correctly? I thought that linking my=
 project to sysroot which I installed for the n310 and to the SDK toolchain=
( maybe I&#39;m doing this incorrectly) would be pretty straightforward.<br=
></div><br></div><div dir=3D"ltr"><div><br></div></div><br></div><div><br><=
/div></div><br></div><div dir=3D"ltr"><span><br></span></div><div dir=3D"lt=
r"><span></span><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br><=
/div><div><br></div>
       =20
        </div><div id=3D"gmail-m_4135037161792215501yahoo_quoted_0310847195=
">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">pat=
chvonbraun@gmail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_4135037161792215501yiv8850409427"><=
div>
    <div id=3D"gmail-m_4135037161792215501yiv8850409427yqtfd55190"><div>On =
2021-08-24 12:08 p.m., Tellrell
      White wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div id=3D"gmail-m_4135037161792215501yiv885=
0409427yqtfd67013"></div><div><div style=3D"font-family:&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div id=3D"gmail-m_41350=
37161792215501yiv8850409427yqtfd55908">
        </div><div dir=3D"ltr"><div id=3D"gmail-m_4135037161792215501yiv885=
0409427yqtfd79456">Yep. Marcus you caught it!!
          That worked. Do I need to complete the sections on &quot;Compilin=
g
          MPM Natively&quot; and &quot;Building UHD&quot;?? I understand th=
at I need
          the cross-compiler for compiling SW for the device but I don&#39;=
t
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh&#39;ing over the executable=
?
          </div><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    As far as I know, you should be able to just cross-compile the code
    you&#39;re interested in.<div id=3D"gmail-m_4135037161792215501yiv88504=
09427yqtfd36793"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f52b0505ca566311--

--===============1205342610781815507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1205342610781815507==--
