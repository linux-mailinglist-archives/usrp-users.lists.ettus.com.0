Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BECD39BAEE
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 16:32:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77CB53845BB
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 10:32:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="bggZ0CcW";
	dkim-atps=neutral
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D46CA384522
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 10:31:15 -0400 (EDT)
Received: by mail-oi1-f177.google.com with SMTP id d21so9919940oic.11
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 07:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F7HE1qhFjcj5VDd8bWEb0S0c2t5+nPOGoux0HO+B/TE=;
        b=bggZ0CcWZLmFL20vJMZOeM/0W4Tna6JIeuaWP2sW5QKDkE9u15ZYbWynInpi7kXvPD
         m78kpJ7cWIKd+b399MYnv4omAspr85iKmSH/Y8DoCLmeRpOyB7M11K4LtL0XhIbRfzTn
         Dky2cWk1ABZ2v+XaHShxWK1lXRZ8gnlf12Z65gNAmtzFpS9IqebfX1Q1OcoHfXyrcVJU
         mXV/tE4X2dYBz9+qQWbMxK5sfFss0gcH9BK3cJuScxQjLuDhMzfdUkeGj3jAiXu3ghWw
         ayu/kMoLBumKlr2wv4sNq3SP7zMN0WmyFXFctxlYkDkSFbpif1VDQgnRqTKMyTZVTFtP
         t1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F7HE1qhFjcj5VDd8bWEb0S0c2t5+nPOGoux0HO+B/TE=;
        b=I/fdU+1uuZJXH71VSM0tQq3CUXaM4kKSvGK86iuJZXlSIC+kxpiDiONxitZtuFYWDp
         OS+Ke9ERHXIqflfIIVeXYSKaF9z/rK5aZM5WF08UyZdV3vBzPoAG/kzlRl+5HYjctsvq
         OOXyl6DZilTB4273NN88A5I6ozVuXIuNDO3IufdDfKtaw44D+R8SWTOnZnhHS1zlP7G6
         uuzm8oz+7FI8JkpL9yel+tvLZ1m7a9mLfgwW8OVk410Wb6DIN4sgN1bF7n0qGPbUpD6K
         sw+lh6QtrsgD3zilL0gt5DIizO8d0wXBJAJ8XVHzrOK77fCmw0NqmgNVb77PpKJXwMKk
         q7kg==
X-Gm-Message-State: AOAM532L1175u5jSXoYA9MHraoe5rp+/nbEuyMbHfnaH82EDJgVmTSyg
	MqDFVpIEcrcbMd464pGx0ok2MMwG+rbyAD7GYOwoazDo
X-Google-Smtp-Source: ABdhPJzl41tCHOInoW3wCwEtuhOTdtN2l0EnUJJhJtMzqDWz5rmuFxGbLlg/HAwAKd0qnYWvGm0N3rHb/GlHDAqYyOo=
X-Received: by 2002:aca:efc1:: with SMTP id n184mr11179064oih.23.1622817074984;
 Fri, 04 Jun 2021 07:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <qNdvISYZmdMc33GPFGB4woVoeW32oXHm76PxDaLBnI@lists.ettus.com> <CAFche=iDdFWLJTFKNQ+cQ925ECr8+MiyMUPFCko=X4Xnq1SAkg@mail.gmail.com>
In-Reply-To: <CAFche=iDdFWLJTFKNQ+cQ925ECr8+MiyMUPFCko=X4Xnq1SAkg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 4 Jun 2021 09:30:59 -0500
Message-ID: <CAFche=gLMu=1RQp0gCcWrN07sCihqOKe=5d9e+CLprhtZrM7gA@mail.gmail.com>
To: andrew4010@rambler.ru
Message-ID-Hash: 53QGU4X743GQ5XICQREFRAP6NNVFS3HP
X-Message-ID-Hash: 53QGU4X743GQ5XICQREFRAP6NNVFS3HP
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD log
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53QGU4X743GQ5XICQREFRAP6NNVFS3HP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1660163214848729730=="

--===============1660163214848729730==
Content-Type: multipart/alternative; boundary="0000000000004a4a0d05c3f18b9f"

--0000000000004a4a0d05c3f18b9f
Content-Type: text/plain; charset="UTF-8"

Also useful:
https://files.ettus.com/manual/page_logging.html

Wade

On Fri, Jun 4, 2021 at 8:54 AM Wade Fife <wade.fife@ettus.com> wrote:

> The documentation for the C API log function is here:
>
>
> https://files.ettus.com/manual/log_8h.html#a970e4c6a2fbc9761fd1a4d26dce81544
>
> I haven't used the C API, but the C++ API looks very similar. Normally the
> macros are used to print log messages (e.g., UHD_LOG_TRACE, UHD_LOG_DEBUG,
> UHD_LOG_INFO, etc.). These macros call the underlying _uhd_log() or
> uhd::_log::log() function. If you grep for those macros, you will find many
> examples of how to use them. You'll find more information in log.h and
> log.hpp.
>
>
> https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log.h
>
> https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log.hpp
>
> The minimum log level available is defined by the cmake option
> "-DUHD_LOG_MIN_LEVEL" at compile time. The log level can be set at runtime
> by specifying the "UHD_LOG_LEVEL" environment variable. If you want to
> change the log level through the API, you can do that with
> uhd::log::set_log_level(level). There are separate variables and functions
> if you want to change just the file logging or just console logging.
>
> The way I use it is I build UHD with the cmake option
> "-DUHD_LOG_MIN_LEVEL=trace". "trace" is the lowest level, so this makes all
> logging available. (The logging levels are trace, debug, info, warning,
> error, fatal, off.) Then I set an environment variable
> "UHD_LOG_CONSOLE_LEVEL=trace" when I want to show all the log messages at
> runtime in the console, or set it to "info" for the default level of
> messaging. Set it to "off" to disable all log messages.
>
> Thanks,
>
> Wade
>
>
> On Fri, Jun 4, 2021 at 8:03 AM andrew4010 via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello
>>
>> In documentation dont described how to use _uhd_log function in C API.
>>
>> What do the parameters of this function mean?
>>
>> How to control console out with this function?
>>
>> Sample code to completely hide the console log?
>>
>>
>> Thank you
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000004a4a0d05c3f18b9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also useful:</div><div><a href=3D"https://files.ettus=
.com/manual/page_logging.html">https://files.ettus.com/manual/page_logging.=
html</a></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 4, 2021 at 8:54=
 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>The documentation for the C API log function is here=
:</div><div><br></div><div><a href=3D"https://files.ettus.com/manual/log_8h=
.html#a970e4c6a2fbc9761fd1a4d26dce81544" target=3D"_blank">https://files.et=
tus.com/manual/log_8h.html#a970e4c6a2fbc9761fd1a4d26dce81544</a></div><div>=
<br></div><div>I haven&#39;t used the C API, but the C++ API looks very sim=
ilar. Normally the macros are used to print log messages (e.g., UHD_LOG_TRA=
CE,=20
UHD_LOG_DEBUG,=20
UHD_LOG_INFO, etc.). These macros call the underlying _uhd_log() or uhd::_l=
og::log() function. If you grep for those macros, you will find many exampl=
es of how to use them. You&#39;ll find more information in log.h and log.hp=
p.<br></div><div><br></div><div><a href=3D"https://github.com/EttusResearch=
/uhd/blob/master/host/include/uhd/utils/log.h" target=3D"_blank">https://gi=
thub.com/EttusResearch/uhd/blob/master/host/include/uhd/utils/log.h</a></di=
v><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/inc=
lude/uhd/utils/log.hpp" target=3D"_blank">https://github.com/EttusResearch/=
uhd/blob/master/host/include/uhd/utils/log.hpp</a></div><div><br></div><div=
>The minimum log level available is defined by the cmake option &quot;-DUHD=
_LOG_MIN_LEVEL&quot; at compile time. The log level can be set at runtime b=
y specifying the &quot;UHD_LOG_LEVEL&quot; environment variable. If you wan=
t to change the log level through the API, you can do that with uhd::log::s=
et_log_level(level). There are separate variables and functions if you want=
 to change just the file logging or just console logging.

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
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><p>Hello</p><p>In documentation dont described how to u=
se _uhd_log function in C API.</p><p>What do the parameters of this functio=
n mean?</p><p>How to control console out with this function?</p><p>Sample c=
ode to completely hide the console log?</p><p><br></p><p>Thank you</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000004a4a0d05c3f18b9f--

--===============1660163214848729730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1660163214848729730==--
