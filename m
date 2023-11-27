Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A26027F96D0
	for <lists+usrp-users@lfdr.de>; Mon, 27 Nov 2023 01:29:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CADB384FCC
	for <lists+usrp-users@lfdr.de>; Sun, 26 Nov 2023 19:29:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701044963; bh=vU5rjAFYQnjOW4d6VAjUS+wj8/4JiUVFQVtwXzdbBvo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=f3ZzhXfk8B6mLKqIV8aPOw/7ZTjWFP8mwxZnDn6GP7EVlSi3/jyib2muVbrVr6t79
	 C+qp1QLgcWbogtQDaP7mMJz0m9t9unb1P6g6VUzQEYweRmZApL3sNa3FlMEbV6qKMM
	 fsXNVqsrc3UGI90LuNEYiIi7Lj+hiySPsK/FGUh+bmNo0/4WL28XwE5FQ1LL450Nz+
	 nBlXYOh61WB5Vpi+2s5EZN7f6ATcxWs06DRkP8uRazbVn1CNujzE9sK+TVDxp5WFTW
	 0K+unwSSNtQhoJfehIzHbOqnhB0O29zC2KYbZrtxYK1U/tlvRjeRfJqHo1PN+sxPvx
	 IxTAAN5kt1PEg==
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 16736384C9A
	for <usrp-users@lists.ettus.com>; Sun, 26 Nov 2023 19:28:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FtSE8s3q";
	dkim-atps=neutral
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1cfa3f7fcd4so5648515ad.1
        for <usrp-users@lists.ettus.com>; Sun, 26 Nov 2023 16:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701044925; x=1701649725; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JC7+D/KFgQvlVsXN1ItjufZhfOJI+HnEvuD/Iet0UdI=;
        b=FtSE8s3qY+86qSvfzt7idAPxUeaS/tibjVpkmqmHI9bZXhttPgesFYYLqJypWg9JJ9
         qNSxXsHDFvV/CVgAHYdT4HFDLz5hPUyg8I6kJKPiiDVr4q5YbsQh398MU0+oL3aBbAK4
         DQE8opee61f14Am8vM7nXC0xIwDlLVHHMicsGYtbq9yRc46ebStn5vKtHQ4jvTIx15rF
         XJIdBk89Emo67wNvMlpi1v1nU/GDB8sFgVYLoSj47suT4t7BOvvcUsied5E6LusUmSvH
         iQR7sI0AyiW70NGE9xc6f3MNL6ZueuCzH3IiEq9nNaWndQ1Y9OZ3MZx+Uu0CPwigD4ib
         4L+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701044925; x=1701649725;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JC7+D/KFgQvlVsXN1ItjufZhfOJI+HnEvuD/Iet0UdI=;
        b=K0fqu20TaoMDs5vrP3OoNlHsfqyqbi0MnCU4ueyaTJxRGfyFv3Wi6V90GKpSmZOJCm
         Fxsn72NnHdmlKds0DyTWHcZZgjDQ/6JuayAGjytStaQHIbVyU5RcIbU9HX59OejIs7qt
         PaDYhGAebha2+e0X+5/m5pr3CMKDnvLuu/T6WjV5t273I/5NJNrDCT0r7PQrdB3ZWOfo
         jcK27fP9SYyCdN8rZ1dEsEYWm5lgryJC17fQIT6mMRxcAj+DwzhvKFRsHYB6H2mp6GNm
         FSZJNiflcJclRCRVM4qqH4bHbGuaTt3BTBMjsEj5TqZDid7JsWKIjhCZcJtJtL6jVuJY
         85kA==
X-Gm-Message-State: AOJu0YzTD4jqJE+I9I7x6ur2IVS4QksqMx5o9Ob+M4QAb7ZnPWasyZKe
	PeMJGCSC1bm6cTWfm2cgAm0VzLmLnqLbdckr4186gHfXClk=
X-Google-Smtp-Source: AGHT+IHA0cY06G5dVQ97OliyrtUv+ZMLzfNHn0SqOwrXO2xemTxgJ9HssS78NREI7bDchNkr90IIWbZtitjTmLgGGMQ=
X-Received: by 2002:a05:6a20:7f8c:b0:18a:f711:7c12 with SMTP id
 d12-20020a056a207f8c00b0018af7117c12mr11946796pzj.4.1701044925476; Sun, 26
 Nov 2023 16:28:45 -0800 (PST)
MIME-Version: 1.0
From: Ethan C <ethanclarke365@gmail.com>
Date: Sun, 26 Nov 2023 16:28:32 -0800
Message-ID: <CAM0spwpcaZdAsfKJZ=FKO8t-9XJwcT0q-fMvr396ON2V96Dgkw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PZOLWXAE7V4O75QDQI4QJ55YK4KIBPAQ
X-Message-ID-Hash: PZOLWXAE7V4O75QDQI4QJ55YK4KIBPAQ
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Implementing B210 GPIO ATR for both channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PZOLWXAE7V4O75QDQI4QJ55YK4KIBPAQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1578527811538589560=="

--===============1578527811538589560==
Content-Type: multipart/alternative; boundary="00000000000087b609060b176221"

--00000000000087b609060b176221
Content-Type: text/plain; charset="UTF-8"

 <https://stackoverflow.com/posts/77535402/timeline>

I am planning to use the GPIO ATR on a B210 as a PTT signal. Both channels
will be used on the B210. Currently, GPIO ATR can't be switched from
channel A to channel B on the B210 due to the function not being
implemented in UHD, from EttusResearch/uhd/host/lib/usrp/multi_usrp.cpp
<https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_usrp.cpp>

void set_gpio_src(
const std::string&, const std::vector<std::string>&, const size_t) override
{
throw uhd::not_implemented_error(
"set_gpio_src() not implemented for this motherboard!");
}

Could this functionality be implemented with a script that directly
accesses the ATR or tx/rx status registers? Or would I need to build custom
firmware and modify the UHD drivers? Are there any good resources or
tutorials for how to do either of these things?

--00000000000087b609060b176221
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<button class=3D"gmail-js-saves-btn gmail-s-btn gmail-s-btn__unset gmail-c-=
pointer gmail-py4" type=3D"button" id=3D"gmail-saves-btn-77535402" aria-con=
trols=3D"" aria-describedby=3D"--stacks-s-tooltip-smqn2zfr">
</button>








   =20
    <a class=3D"gmail-js-post-issue gmail-flex--item gmail-s-btn gmail-s-bt=
n__unset gmail-c-pointer gmail-py6 gmail-mx-auto" href=3D"https://stackover=
flow.com/posts/77535402/timeline" aria-label=3D"Timeline" aria-describedby=
=3D"--stacks-s-tooltip-gwf6bf7z"></a><div class=3D"gmail-votecell gmail-pos=
t-layout--left"><div class=3D"gmail-js-voting-container gmail-d-flex gmail-=
jc-center gmail-fd-column gmail-ai-stretch gmail-gs4 gmail-fc-black-300"><b=
r></div><div class=3D"gmail-js-voting-container gmail-d-flex gmail-jc-cente=
r gmail-fd-column gmail-ai-stretch gmail-gs4 gmail-fc-black-300">I am plann=
ing to use the GPIO ATR on a B210 as a PTT signal. Both=20
channels will be used on the B210.
Currently, GPIO ATR can&#39;t be switched from channel A to channel B on th=
e
 B210 due to the function not being implemented in UHD, from <a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_usrp.cpp"=
 rel=3D"nofollow noreferrer">EttusResearch/uhd/host/lib/usrp/multi_usrp.cpp=
</a>
</div><div class=3D"gmail-s-prose gmail-js-post-body"><pre><code>void set_g=
pio_src(
const std::string&amp;, const std::vector&lt;std::string&gt;&amp;, const si=
ze_t) override
{
throw uhd::not_implemented_error(
&quot;set_gpio_src() not implemented for this motherboard!&quot;);
}
</code></pre>
<p>Could this functionality be implemented with a script that directly=20
accesses the ATR or tx/rx status registers? Or would I need to build=20
custom firmware and modify the UHD drivers? Are there any good resources
 or tutorials for how to do either of these things?</p>
    </div></div>

</div>

--00000000000087b609060b176221--

--===============1578527811538589560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1578527811538589560==--
