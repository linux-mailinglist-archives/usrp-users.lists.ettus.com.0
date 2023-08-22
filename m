Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A40D784CB9
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 00:13:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AEBD384AFC
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 18:13:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692742384; bh=92bng+LrDuBKXgsf0nK12OWK4u7pu5Ar/RKDeRyN6O0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iI1l0xStgBw21Cpr004rxoyY+VMuWM6xEm9a/PO7JBFZDirVoPw5JyVLJ2P78SRf2
	 LigWh1QDJbGqTa/Rxr8QxDD4dmMTw9ByGcag/gXhVFYtcmpQQKMnTrVlWgUc5EOcSc
	 kSYXCDwMr782yYVe6nrVl5XswuVSpciWVWsMx54uLyqUiSNpb7F4FesF9B5EWMqk4x
	 5g1hYmJ/URXLz1Q++Mz1Y8wtwXxk7BmRGh5Z5F3rHRs+5sJ+BhjRokxB0nrPdmqqPB
	 kdQfV8uWtRGxMwLHH8XHpgINVfe41AAHzLW2jpUK/6iu02d6PUlnKfshTugeiIzOh7
	 8PmImedHRiSNQ==
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E6C4380E99
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 18:12:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aBN6vf8p";
	dkim-atps=neutral
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-44d60bb6aa5so400799137.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 15:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692742351; x=1693347151;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gv1AH/v9Xt/U61wsTCjkk6zPJdrhrFMlMfUMw7odWcQ=;
        b=aBN6vf8pW8JIMtLbPN+FwSdWsOJl6N6lGWyemFaESMA6zcQxrORx3+5eTM1emw6WSs
         A4pNZI0NGRHVS0wozW+3yr+nOCQV9uzSWxNVLp64ZIgeetbeHwlNe8pOM9RegiQBtfQI
         O/V0t3vuZdbiyxT8qq8tV94d4dHcHwFREpj12j4HjFNBfsFtImUmfXT1KJwnPQoOvZ65
         PELjb8VUDZ+07vcQapGgdAOz/t/ipiJrGgYjEOq8jr7l6DpT1CVGlRCnXsxdynBFEaCi
         +j7FU/taXuh1UClHzq6PODEzTUulKpnzKEw5W4rCeYckRC/D5z54jycD78kRbHRm5EzX
         Op2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692742351; x=1693347151;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Gv1AH/v9Xt/U61wsTCjkk6zPJdrhrFMlMfUMw7odWcQ=;
        b=FyBYcIilt+VxXSM3yTGT9DYitnY8KL/VMb5mryOim8UefsJgyw2DVFOXvJU6YLBl51
         OtUwRIBJqNgBuah2yG5gyHlGJJMuLEXDSp0k0OGQRozaGtthgFt+9tG4USG5jRAZ1j3j
         OEsSqUErRMi4ka3m9mdoZmYSWmNt1Enyg/efG2CEhATOJmJUuDsybEkq3mcMoqurWOrz
         HVH3OWfKp0qpo8ihpz5sVV0Kk8G53ylUOeeqWJW2zdymeN5LEHdk4kMeDzvEMpqV0G7Z
         EZg8RuZgABBKogRgxjx/aZ31MxrIwNl8jpXzh3jjbvSJgirOW22kmtpqYotfJCrFP+ze
         8WYQ==
X-Gm-Message-State: AOJu0YwciXI6KLiDsk9rCS1vnCI8KKvdcJexKp30SvB5NMWr7xL+uOpT
	JnUvK9AF0d9OYWvKeFbrHGBG3vaaBdU=
X-Google-Smtp-Source: AGHT+IFSKGLXIBrXNPIV22SuMbv+3tPyUwRiUOhJSMgLvKsjVhIbS9gWra5l29ZVi6pGR8mPYhHYXQ==
X-Received: by 2002:a67:fa58:0:b0:443:9037:d8d5 with SMTP id j24-20020a67fa58000000b004439037d8d5mr9074669vsq.23.1692742350650;
        Tue, 22 Aug 2023 15:12:30 -0700 (PDT)
Received: from [192.168.2.174] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d25-20020a0caa19000000b0062629cbff11sm4115800qvb.11.2023.08.22.15.12.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 15:12:30 -0700 (PDT)
Message-ID: <b6026dd4-c37e-03cc-22e2-550214dfd333@gmail.com>
Date: Tue, 22 Aug 2023 18:12:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <trinity-9c2159d5-bdf9-46a0-a7b2-15179c76afad-1692720023650@3c-app-webde-bs44>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <trinity-9c2159d5-bdf9-46a0-a7b2-15179c76afad-1692720023650@3c-app-webde-bs44>
Message-ID-Hash: CQ7AJF6ORB4H7CT6GG6JDTSIMELX74TY
X-Message-ID-Hash: CQ7AJF6ORB4H7CT6GG6JDTSIMELX74TY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: timing error UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CQ7AJF6ORB4H7CT6GG6JDTSIMELX74TY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4971963952324187376=="

This is a multi-part message in MIME format.
--===============4971963952324187376==
Content-Type: multipart/alternative;
 boundary="------------QhPgsLl4ENFzhbNL424Ui7qR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QhPgsLl4ENFzhbNL424Ui7qR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/08/2023 12:00, theowire@web.de wrote:
> Dear all,
> I am working on a measurement setup with the USRP X410. Since we=20
> wanted a higher sampling rate, we sitched from ethernet to 10gbit/s=20
> thunderbold.
> With ethernet and a sampling rate of 2MHz, the flowgraph in gnuradio=20
> worked perfectly fine. Now, with 10gibt/s, also with 2MHz sampling=20
> rate (for the beginning-> will be higher later), the setup does not=20
> work well anymore.
> GNUradio prints now
> "LLLLLLLLLLL" and
> "usrp_sink :error: In the last 802 ms, 181 cmd time errors occurred."
> I did all what the suggestions I found here:=20
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=20
> <https://deref-web.de/mail/client/0e2L9R-XDUU/dereferrer/?redirectUrl=3D=
https%3A%2F%2Fkb.ettus.com%2FUSRP_Host_Performance_Tuning_Tips_and_Tricks=
>
> E.g., MTU rates in the network configuration to 9000 etc.
> Is there something else which I am missing? Any other important things=20
> to keep in mind while using 10gbit/s thunderbold?
> Thank you very much for every little help.
> Best,
> Theo
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You can remove Gnu Radio (temporarily) from the equation=C2=A0 by using t=
he=20
"benchmark_rate" application to tell you whether
 =C2=A0 your interface is behaving correctly.=C2=A0=C2=A0=C2=A0 Really, a=
t 2Msps, whether=20
you use a 1Gbit or 10Gbit connection shouldn't matter at all.

Move on from the "benchmark_rate" to something like the "tx_waveforms"=20
example application--does that work at various
 =C2=A0 rates reliably, or does it throw "L" or "U"??


--------------QhPgsLl4ENFzhbNL424Ui7qR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/08/2023 12:00, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:theowire@web.de">theowire@web.de</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:trinity-9c2159d5-bdf9-46a0-a7b2-15179c76afad-1692720023650@3c=
-app-webde-bs44">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Verdana;font-size: 12.0px;">
        <div style=3D"font-family: Verdana;font-size: 12.0px;">
          <div>Dear all,</div>
          <div>=C2=A0</div>
          <div>=C2=A0</div>
          <div>I am working on a measurement setup with the USRP X410.
            Since we wanted a higher sampling rate, we sitched from
            ethernet to 10gbit/s thunderbold.=C2=A0</div>
          <div>With ethernet and a sampling rate of 2MHz, the flowgraph
            in gnuradio worked perfectly fine. Now, with 10gibt/s, also
            with 2MHz sampling rate (for the beginning-&gt; will be
            higher later), the setup does not work well anymore.</div>
          <div>GNUradio prints now</div>
          <div>"LLLLLLLLLLL" and</div>
          <div>"usrp_sink :error: In the last 802 ms, 181 cmd time
            errors occurred."</div>
          <div>I did all what the suggestions I found here: <a
href=3D"https://deref-web.de/mail/client/0e2L9R-XDUU/dereferrer/?redirect=
Url=3Dhttps%3A%2F%2Fkb.ettus.com%2FUSRP_Host_Performance_Tuning_Tips_and_=
Tricks"
              target=3D"_blank" moz-do-not-send=3D"true">https://kb.ettus=
.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a></div>
          <div>E.g., MTU rates in the network configuration to 9000 etc.<=
/div>
          <div>=C2=A0</div>
          <div>Is there something else which I am missing? Any other
            important things to keep in mind while using 10gbit/s
            thunderbold?</div>
          <div>=C2=A0</div>
          <div>=C2=A0</div>
          <div>Thank you very much for every little help.</div>
          <div>=C2=A0</div>
          <div>Best,</div>
          <div>Theo</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You can remove Gnu Radio (temporarily) from the equation=C2=A0 by usi=
ng
    the "benchmark_rate" application to tell you whether<br>
    =C2=A0 your interface is behaving correctly.=C2=A0=C2=A0=C2=A0 Really=
, at 2Msps, whether
    you use a 1Gbit or 10Gbit connection shouldn't matter at all.<br>
    <br>
    Move on from the "benchmark_rate" to something like the
    "tx_waveforms" example application--does that work at various<br>
    =C2=A0 rates reliably, or does it throw "L" or "U"??<br>
    <br>
    <br>
  </body>
</html>

--------------QhPgsLl4ENFzhbNL424Ui7qR--

--===============4971963952324187376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4971963952324187376==--
