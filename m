Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB7E6A217C
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 19:29:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F8BE384396
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 13:29:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677263376; bh=NUVeLs9ah6mLU5nJa588I+vlhdDOmaFa6J02t/tjLe8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=L3JBCNxXL4NeA2dhOR+AB9rUcK3ih92Y2LJAS226ijYln44X4Uj4Xm+RxTZj8NZnp
	 fnPKxxJXZzJG1+4LGFJCmQo7joUnQdI2nr/v4KYbKN5mRkh4f0RUQ4Xk0cjHXugjd6
	 r7R4UuJAtxxuq0w5vvCCGEcTSsu2CVaTPYVUgFWEAhBskiJupbHf3UDunXDsLcHln5
	 BFRo0NrI/ttm5/5wEuD13ZdfhMZDHfWAcElCuf1e9gS849g9HVbew2c/URyOpgRWlk
	 fhGxd0P6IbojAk1J6N6VB8QYJkVg7CTs1McEYpWaG6VIKO2NnrsK8X07+jeRhFaSuN
	 hsiBFFYhhWBcA==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id EE6B8384396
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 13:29:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GHvCkAeN";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id w42so382107qtc.2
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 10:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sQJlTUxjP43j7tLpYmIXIt5f9T3+dxEGJBnFpPy1Dpc=;
        b=GHvCkAeNtk22liVGwvL+8IanfTKI7/tHXN0hf6KjuIbqZR0k5BDejk5/thwu2eFxdA
         IygWGZGYfDyGQcbsS1cWkt76i/7QOhG9A/2mQKS5eXtRTRhvUkfYccLY2v0T83JuetuX
         xbgUSnqN8Ryw1WxR7ae/I4eN6e9Broo7XiDKGbDvGR7SxbeS0xrILp4x/jp8sS3fb2HU
         vlEHiKr+rvCpkxMDMcgoxP6vDWvACDk6/6KxAyEbV+SA4ldpaVwmVdoNxk/DBAZR0+fi
         KFU7qC65mY1E/bX25x1m4HOLY2zzZUzRuoEB3GjVoUqZALa9J+8079EdheLwZ1UEqCT3
         74uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sQJlTUxjP43j7tLpYmIXIt5f9T3+dxEGJBnFpPy1Dpc=;
        b=Gaelj/meEexdQ+pr4sE5HJ0dGqXZhOFRJ7x24hfT8tMITKHo1OBZYm9y3iDXmb3APh
         2hRqr6ckexFs3m9uvolWp8NCCDrjoIy+gCLSmbPbwJkZszN3Ioiv2HQmtm3Xx5R+lNvD
         r/G/cJOk/P5+aDMwsmV2W5K+P0/tXdBmGO8+b1ovBVVTavpGnrVAolxkJp/dI4zQ9pb8
         j2c07qZQWRc3G6ko2TwlHvP6AWgbJ/bXkHAs3VGMxzZgjrSe2QotXF/Dm4d56eYh/5xo
         VsM39cYtiEqYcYb/2tMNbSxzPIkq+DTfQ66PfsdD05AMeDZjb9biHk+mh0UfBqB2izGa
         KQTw==
X-Gm-Message-State: AO0yUKV3T//aJBP6EjLqOugLMQka5WJbLb4YRWA1bYlzRpynDUDsEt+q
	qT4ve9FXxA08i4leO44tL6Jh8DgxG6M=
X-Google-Smtp-Source: AK7set85micyAZuuxPdOLi5hmyoZMT97sSGpfkoMKfG5Ev2mBH8rXvdchgDxQTFQAfHnF9XQxBGiPA==
X-Received: by 2002:ac8:5c55:0:b0:3b6:694f:d710 with SMTP id j21-20020ac85c55000000b003b6694fd710mr16704674qtj.50.1677263370033;
        Fri, 24 Feb 2023 10:29:30 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x30-20020ac84d5e000000b003bfb62a377fsm12331qtv.3.2023.02.24.10.29.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 10:29:29 -0800 (PST)
Message-ID: <0ec41ef1-e63b-d013-4493-33ea92f9b6a0@gmail.com>
Date: Fri, 24 Feb 2023 13:29:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus.com>
Message-ID-Hash: 6TSTE3BGIIRJM547FW4ZBC7DCJMNZLOU
X-Message-ID-Hash: 6TSTE3BGIIRJM547FW4ZBC7DCJMNZLOU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: using rfnoc_graph and usrp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6TSTE3BGIIRJM547FW4ZBC7DCJMNZLOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7104838252102116524=="

This is a multi-part message in MIME format.
--===============7104838252102116524==
Content-Type: multipart/alternative;
 boundary="------------EurpaT9MKQ2pdEug4dEaVQrM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EurpaT9MKQ2pdEug4dEaVQrM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/02/2023 11:05, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently getting the following error, but I am lost as to how to=20
> work around it=E2=80=A6
>
> |[ERROR] [RPC] Someone tried to claim this device again (From:=20
> 192.168.10.1)|
>
> |[WARNING] [MPM.RPCServer] Someone tried to claim this device again=20
> (From: 192.168.10.1)|
>
> It appears the problem comes from instantiating an object=20
> uhd::rfnoc_graph, then, when this object already exists, I try to=20
> create a uhd::usrp::multi_usrp object. For example=E2=80=A6
>
> |auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);|
>
> |uhd::usrp::multi_usrp::sptr usrp =3D=20
> uhd::usrp::multi_usrp::make("addr0=3D192.168.10.2");|
>
> It appears that trying to create both causes the error above to=20
> happen. However, I want to be able to create an rfnoc_graph and use=20
> multi_usrp to get and set the TOD on the ettus N321. How exactly can I=20
> work around this? I saw the rfnoc_graph has a function called=20
> =E2=80=9Csynchronize_devices()=E2=80=9D, however, it does not seem this=
 function can=20
> get and set the TOD as I need.
>
> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You can't have two objects that "own" sessions to the device.=20
Mixing-and-matching multi_usrp and rfnoc objects isn't,
 =C2=A0 near as I can tell, supported.

However, your use case of wanting to do "housekeeping" functions like=20
"set_time_next_pps()" is legitimate, and I'm not
 =C2=A0 sure how that is supported via RFNoC.=C2=A0=C2=A0=C2=A0 Perhaps o=
ne of the RFNoC=20
gurus on here can shed some light?

Although, looking at the rfnoc_rx_to_file.cpp example, you can:

graph->get_mb_controller(0)->set_clock_source(ref);


So there's a "mb_controller" class that looks like it takes the same=20
"stuff" you'd expect from a multi_usrp.


--------------EurpaT9MKQ2pdEug4dEaVQrM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/02/2023 11:05, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:CjcUDMlFhJtAsV42npogDjBbyYWiqrUy7kZzMXYhkG0@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I am currently getting the following error, but I am lost as to
        how to work around it=E2=80=A6</p>
      <p><code>[ERROR] [RPC] Someone tried to claim this device again
          (From: 192.168.10.1)</code></p>
      <p><code>[WARNING] [MPM.RPCServer] Someone tried to claim this
          device again (From: 192.168.10.1)</code></p>
      <p>It appears the problem comes from instantiating an object
        uhd::rfnoc_graph, then, when this object already exists, I try
        to create a uhd::usrp::multi_usrp object. For example=E2=80=A6</p=
>
      <p><code>auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);</code>=
</p>
      <p><code>uhd::usrp::multi_usrp::sptr usrp =3D
          uhd::usrp::multi_usrp::make("addr0=3D192.168.10.2");</code></p>
      <p>It appears that trying to create both causes the error above to
        happen. However, I want to be able to create an rfnoc_graph and
        use multi_usrp to get and set the TOD on the ettus N321. How
        exactly can I work around this? I saw the rfnoc_graph has a
        function called =E2=80=9Csynchronize_devices()=E2=80=9D, however,=
 it does not
        seem this function can get and set the TOD as I need.</p>
      <p>Thanks,</p>
      <p>Joe</p>
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
    You can't have two objects that "own" sessions to the device.=C2=A0=C2=
=A0=C2=A0
    Mixing-and-matching multi_usrp and rfnoc objects isn't,<br>
    =C2=A0 near as I can tell, supported.<br>
    <br>
    However, your use case of wanting to do "housekeeping" functions
    like "set_time_next_pps()" is legitimate, and I'm not<br>
    =C2=A0 sure how that is supported via RFNoC.=C2=A0=C2=A0=C2=A0 Perhap=
s one of the RFNoC
    gurus on here can shed some light?<br>
    <br>
    Although, looking at the rfnoc_rx_to_file.cpp example, you can:<br>
    <br>
    graph-&gt;get_mb_controller(0)-&gt;set_clock_source(ref);<br>
    <br>
    <br>
    So there's a "mb_controller" class that looks like it takes the same
    "stuff" you'd expect from a multi_usrp.<br>
    <br>
    <br>
  </body>
</html>

--------------EurpaT9MKQ2pdEug4dEaVQrM--

--===============7104838252102116524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7104838252102116524==--
