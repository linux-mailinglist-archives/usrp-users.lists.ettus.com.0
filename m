Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A269239BA5E
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 15:56:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9664038466A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 09:55:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="NgAqb5mS";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 671BE38466D
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 09:55:08 -0400 (EDT)
Received: by mail-oi1-f179.google.com with SMTP id v142so9382106oie.9
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 06:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XxoZZC2QmisZ19HC09sQ+CGqkBn03JkKaTDsyaCR/vo=;
        b=NgAqb5mS8CQyfGJgaK7eUqRO5eK53kuHJ44POk0oDK4/dZr2GCL9HTF2+zbaY4ZzxU
         JpFn5kJizl1KnIcg06gHKYg6jfbx3qU+fBjSsfQNWxw7e3hNZ+ozChXFOlY6JEpdXEuV
         2rOdWe7CRdgrBgfeyrkdOO5iIYOzfwWVLj8eqbH+i7U0PEKOVEvWpS1i8Qoym42zRpRT
         8MZ+XFlL5xiMR7//ykYzM6cUY3kjWMe3ok6lFhPy8WdaNrSKtV+1W6FpUYea5gV6i3q+
         yK0vhLUY1usKKqqfXOA/Nt8ul+r65524Lx9qmcKH+4UFKdvzVVwa7UisT+eW99RA2q7d
         mHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XxoZZC2QmisZ19HC09sQ+CGqkBn03JkKaTDsyaCR/vo=;
        b=nyPkkNd6NOnwSohXtlTCy7YlNSLpqIFz1HtA0tZUeevfBwNBnDCRnb/JA71cURiCuk
         dU/HDutcO0/FnX805vGuvj+JxP3RpVNpW7G2vqxSxbR8PXZh51UwzuirITukUIvVZnUA
         UEE9WZskrK5Iijn7kexrmDeuCMNd42JmgvBqmSfUFfAU8sw8rfQoAxtLEa1dXZbTuW4B
         51Wnwv9DdHbh4RqU4xCyhnq8aO/DdnuDgvfVO93XczB8BxxfI5plprDsniB2pfdjcV9/
         YmU85rn248tR+wwvjfXDYCxbMmtXrGdQqzsi1Cb63kGCOUPNtaR9nkgVDFjyCm8ctKIV
         WwfQ==
X-Gm-Message-State: AOAM531ZMXoI4BsC/FKvY1LCeWa4KMAsDUbjuqbunuQkEiHCzFsnpxaB
	6yNEukhJ6yEcj7n2a6jLtm2A+XmXeZq+ZhgCQUALX9sq
X-Google-Smtp-Source: ABdhPJz0t3atLLhPPHEnH7mh1tFOptR404fc88L+UxtkaSX16+RpWv8/k71T5d/LV2XdnTzHK8NMaKW7a4fxGnBq5os=
X-Received: by 2002:aca:603:: with SMTP id 3mr11168995oig.145.1622814907784;
 Fri, 04 Jun 2021 06:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <qNdvISYZmdMc33GPFGB4woVoeW32oXHm76PxDaLBnI@lists.ettus.com>
In-Reply-To: <qNdvISYZmdMc33GPFGB4woVoeW32oXHm76PxDaLBnI@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 4 Jun 2021 08:54:51 -0500
Message-ID: <CAFche=iDdFWLJTFKNQ+cQ925ECr8+MiyMUPFCko=X4Xnq1SAkg@mail.gmail.com>
To: andrew4010@rambler.ru
Message-ID-Hash: GVFPIKJCN5JHGTP27RHHD5OUHYZ4XCOZ
X-Message-ID-Hash: GVFPIKJCN5JHGTP27RHHD5OUHYZ4XCOZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD log
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVFPIKJCN5JHGTP27RHHD5OUHYZ4XCOZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2609121757513055697=="

--===============2609121757513055697==
Content-Type: multipart/alternative; boundary="0000000000001d758e05c3f10ae2"

--0000000000001d758e05c3f10ae2
Content-Type: text/plain; charset="UTF-8"

The documentation for the C API log function is here:

https://files.ettus.com/manual/log_8h.html#a970e4c6a2fbc9761fd1a4d26dce81544

I haven't used the C API, but the C++ API looks very similar. Normally the
macros are used to print log messages (e.g., UHD_LOG_TRACE, UHD_LOG_DEBUG,
UHD_LOG_INFO, etc.). These macros call the underlying _uhd_log() or
uhd::_log::log() function. If you grep for those macros, you will find many
examples of how to use them. You'll find more information in log.h and
log.hpp.

https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log.h
https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log.hpp

The minimum log level available is defined by the cmake option
"-DUHD_LOG_MIN_LEVEL" at compile time. The log level can be set at runtime
by specifying the "UHD_LOG_LEVEL" environment variable. If you want to
change the log level through the API, you can do that with
uhd::log::set_log_level(level). There are separate variables and functions
if you want to change just the file logging or just console logging.

The way I use it is I build UHD with the cmake option
"-DUHD_LOG_MIN_LEVEL=trace". "trace" is the lowest level, so this makes all
logging available. (The logging levels are trace, debug, info, warning,
error, fatal, off.) Then I set an environment variable
"UHD_LOG_CONSOLE_LEVEL=trace" when I want to show all the log messages at
runtime in the console, or set it to "info" for the default level of
messaging. Set it to "off" to disable all log messages.

Thanks,

Wade


On Fri, Jun 4, 2021 at 8:03 AM andrew4010 via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> In documentation dont described how to use _uhd_log function in C API.
>
> What do the parameters of this function mean?
>
> How to control console out with this function?
>
> Sample code to completely hide the console log?
>
>
> Thank you
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001d758e05c3f10ae2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The documentation for the C API log function is here:=
</div><div><br></div><div><a href=3D"https://files.ettus.com/manual/log_8h.=
html#a970e4c6a2fbc9761fd1a4d26dce81544">https://files.ettus.com/manual/log_=
8h.html#a970e4c6a2fbc9761fd1a4d26dce81544</a></div><div><br></div><div>I ha=
ven&#39;t used the C API, but the C++ API looks very similar. Normally the =
macros are used to print log messages (e.g., UHD_LOG_TRACE,=20
UHD_LOG_DEBUG,=20
UHD_LOG_INFO, etc.). These macros call the underlying _uhd_log() or uhd::_l=
og::log() function. If you grep for those macros, you will find many exampl=
es of how to use them. You&#39;ll find more information in log.h and log.hp=
p.<br></div><div><br></div><div><a href=3D"https://github.com/EttusResearch=
/uhd/blob/master/host/include/uhd/utils/log.h">https://github.com/EttusRese=
arch/uhd/blob/master/host/include/uhd/utils/log.h</a></div><div><a href=3D"=
https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log=
.hpp">https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/uti=
ls/log.hpp</a></div><div><br></div><div>The minimum log level available is =
defined by the cmake option &quot;-DUHD_LOG_MIN_LEVEL&quot; at compile time=
. The log level can be set at runtime by specifying the &quot;UHD_LOG_LEVEL=
&quot; environment variable. If you want to change the log level through th=
e API, you can do that with uhd::log::set_log_level(level). There are separ=
ate variables and functions if you want to change just the file logging or =
just console logging.

</div><div><br></div><div>The way I use it is I build UHD with the cmake op=
tion &quot;-DUHD_LOG_MIN_LEVEL=3Dtrace&quot;. &quot;trace&quot; is the lowe=
st level, so this makes all logging available. (The logging levels are trac=
e, debug, info, warning, error, fatal, off.) Then I set an environment vari=
able &quot;UHD_LOG_CONSOLE_LEVEL=3Dtrace&quot; when I want to show all the =
log messages at runtime in the console, or set it to &quot;info&quot; for t=
he default level of messaging. Set it to &quot;off&quot; to disable all log=
 messages.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade</=
div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Jun 4, 2021 at 8:03 AM andrew4010 via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><p>Hello</p><p>In documentation dont described how to use _uhd_log functi=
on in C API.</p><p>What do the parameters of this function mean?</p><p>How =
to control console out with this function?</p><p>Sample code to completely =
hide the console log?</p><p><br></p><p>Thank you</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001d758e05c3f10ae2--

--===============2609121757513055697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2609121757513055697==--
