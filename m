Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A1411787E
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 22:29:50 +0100 (CET)
Received: from [::1] (port=51472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieQbD-00033T-2S; Mon, 09 Dec 2019 16:29:47 -0500
Received: from mail-lf1-f47.google.com ([209.85.167.47]:44275)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ieQb8-0002xo-JX
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 16:29:42 -0500
Received: by mail-lf1-f47.google.com with SMTP id v201so11887337lfa.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 13:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4nzvn4UaXiVoXW+I9UWTPTIleD1Cit7LII+ABNz3Lhg=;
 b=sP8XZYZkk0Jzj5WS2l5ZGg7ZRCIOsw0Ly8vmldJaHxGTq4nQ51MZcDdcNdO0hrG88e
 NzQBL14DLCL5Qa1xOxKCBCqKWMF8XeEfBGGddeixwEOoKRxC9NFxAaCoOLqlOXr+2Rx9
 DqPpV1ZgmGw8Cw5MVduNq9r05joZAHrUYElmDPICKJlN5sO54RETYVxjYSjepl7FIZSk
 rEBnFYB8DLUPqkVokQbYbNjlBX0L1PCBwKt1HwPCL5m8fODq3ce979cJolA8NzAZQ0l5
 +0+mvO2cZe2IRluf5m/WnRIRzW0TJ9tlCHBC/V6VWB7ux4oGpKf4wbaK0B3FR1Pp4VLP
 0/Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4nzvn4UaXiVoXW+I9UWTPTIleD1Cit7LII+ABNz3Lhg=;
 b=nnca4irJp+A7MZwbU4PlrA5use4/RjPTk69C7LWVkZOtI+yOV7ka/snWgkOnco7jd1
 4UdgkoXL/jYWQ6gCIPL8PMaKHhVWAdc52IfzNV7dGmfEgjdzZdXDPgqR147sjHA1CvT3
 AwO9KRDUG+4BOS8YUva7FxQlffHiESu8ZidfnZOsCbH481q4v3+n7x+zi9LEKCy9ejhf
 SiKQmyFoNo6A1LrFUAolrpcFoCt6IAOqHlXssy2MAFHMgV9Uc90yHuX3YnWfOzLmurFB
 hHf7VdG0+5mosNG6xYOoHf/OT7elPZrtc0+WNijZLDqcWsu6XQqdF1W1bvOwgFagA4EF
 D/WQ==
X-Gm-Message-State: APjAAAVqORbKBGWM31PvKOmwPV56mm8aZcwKqceDMJ30JMQE+WQTnrGS
 S6Xainno08z7N/qQbDEXU6FwZpFYsqkSQ3fBSLciCjD/
X-Google-Smtp-Source: APXvYqxLIhTI3HOzFyHXf8BdVTqyvp8d3McIPvICV5+5rjUgYEV8tmWRVxNDysqeU3tBJeAlEGRx0E/rsoInTfAdwW0=
X-Received: by 2002:ac2:485c:: with SMTP id 28mr16700315lfy.118.1575926941292; 
 Mon, 09 Dec 2019 13:29:01 -0800 (PST)
MIME-Version: 1.0
References: <CABgWqPyBY0FFk27+Z3SdJtH-Mq1BoMtVQs562WwcRnWz8oZnYQ@mail.gmail.com>
In-Reply-To: <CABgWqPyBY0FFk27+Z3SdJtH-Mq1BoMtVQs562WwcRnWz8oZnYQ@mail.gmail.com>
Date: Mon, 9 Dec 2019 15:28:49 -0600
Message-ID: <CANf970Zs69yBDvwd9k8wZ1C=WUkoWr3Skf7QYt3Q7t0jary+CA@mail.gmail.com>
To: Lukas Buderath <lukas.buderath@gmail.com>
Subject: Re: [USRP-users] Error message: UHD: 1
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8088184466595311561=="
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

--===============8088184466595311561==
Content-Type: multipart/alternative; boundary="00000000000087308d05994c1539"

--00000000000087308d05994c1539
Content-Type: text/plain; charset="UTF-8"

Lukas,

You can test your hardware and software stack by running a couple UHD
shipping examples. Check out the examples here:
https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio

You can also recompile UHD with the logging level set to trace in your
CMAKE flags: https://files.ettus.com/manual/page_logging.html

Best,

Sam Reiter
Ettus Research


On Fri, Dec 6, 2019 at 6:47 AM Lukas Buderath via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey,
>
> we are utilizing the B210 with Amarisoft to emulate an LTE network. There
> are currently three PCs involved: One emulating the EPC, one emulating the
> eNB and one emulating the UE. We want the eNB and the UE to communicate via
> TDD on frequency band 38. However, when we adapt the Amarisoft config files
> to serve this purpose, the following (not very enlightening) error message
> appears:
> UHD: 1
> UHD: 1
> UHD: 1
> ...
>
> We have asked the Amarisoft support for help, but they claim this is a uhd
> related issue. Can somebody relate? Does anyone have any idea what this
> error message says?
>
> Kind regards,
> Lukas
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000087308d05994c1539
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Lukas,</div><div><br></div><div>You can test your har=
dware and software stack by running a couple UHD shipping examples. Check o=
ut the examples here: <a href=3D"https://kb.ettus.com/Verifying_the_Operati=
on_of_the_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/Verifying_the_=
Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a></div><div><br></div><div>=
You can also recompile UHD with the logging level set to trace in your CMAK=
E flags: <a href=3D"https://files.ettus.com/manual/page_logging.html">https=
://files.ettus.com/manual/page_logging.html</a></div><div><br></div><div>Be=
st,</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
>Sam Reiter=C2=A0<div></div><div>Ettus Research<br></div></div></div></div>=
</div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Dec 6, 2019 at 6:47 AM Lukas Buderath via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hey, <br></div><div><br></div><div>we are =
utilizing the B210 with Amarisoft to emulate an LTE network. There are curr=
ently three PCs involved: One emulating the EPC, one emulating the eNB and =
one emulating the UE. We want the eNB and the UE to communicate via TDD on =
frequency band 38. However, when we adapt the Amarisoft config files to ser=
ve this purpose, the following (not very enlightening) error message appear=
s: <br></div><div>UHD: 1</div><div>UHD: 1</div><div>UHD: 1</div><div>...</d=
iv><div><br></div><div>We have asked the Amarisoft support for help, but th=
ey claim this is a uhd related issue. Can somebody relate? Does anyone have=
 any idea what this error message says? <br></div><div><br></div><div>Kind =
regards, <br></div><div>Lukas<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000087308d05994c1539--


--===============8088184466595311561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8088184466595311561==--

