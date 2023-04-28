Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D856F1B02
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 16:56:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 134BA380AC2
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 10:56:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682693780; bh=2sYrAbhjV3b92Y7X4+MGpRjJfZBlTn/CgHFQ70nZK08=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Xfms6t+u1AKFz6klr/vkQpJNl8O/kHTFQll2zkiz5POT/IfXwCOI+vNjI3PPOZJZl
	 sgpWRR05atUg8/o6piHvRa1ClRxQWtXHYfDsA7F0RJsIO8r/qyyzh+cpRTHzGhhtvt
	 qe8A++QhWXjKxDDWdfOBYq0xBldI/L+uFXCG2EX17bakGiT6fPqNfsFj3xJ1FbJxFP
	 UHMnZrkvrDkyPL8W4O/2MX3HyyHTcVlWfFUIw9BRSmxDPazhCDDQIi/YYnXVwcFAOM
	 6gLXvVg32NIKl68VWF0QMUfIq73eVJ2j2yWrxMp0ATbg8/W6gF83m6H6vLeXSzvRTz
	 VEK49mbPu11jg==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D7B7C383C3F
	for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 10:55:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WnIBPgZ2";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-74e462a540aso368632285a.1
        for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 07:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682693738; x=1685285738;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H76TT+vNpuZKJq+FXz4ihsOjg7S+CMUiKLMNjXVzBKk=;
        b=WnIBPgZ2CcGbGJsag7el5yxIKk9UITC3G+gdElGg+r9BiWDreQQFwSu85i0/DoI4Gm
         Ta7vGwAgWzFXTIj1A559NnvY7VGoe6MHXLdStRHn9lhJbSxT7K27RzLTxFXCH/q1dekV
         WMOyhtOjtJG2HNUhgOa9tRhArCAs5LFJ7s3WjKAkt41tPgR1j2Ep15HQNUWQzxLG6+yW
         C6j8MkJv8dw2FMxBNvZcgNoWbKs0aBFdPAgg4St5Km5PvMN8EGbSRp5i4uTGJTUiRuV9
         p3K7kdFq9iNKkeahWoNxIZ949MyRPdScrQ62Rq5RoaqjF2MqXkAg0RlcqXiNZdPzkAUh
         sEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682693738; x=1685285738;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H76TT+vNpuZKJq+FXz4ihsOjg7S+CMUiKLMNjXVzBKk=;
        b=JJ1f+DGJOif1fpaRtWaUnn3KBB3gYg53QljXBF5Nw8DqlYJobJfOp9t44icSVBwDGH
         ytSOM08rK0yehVzWZM8RgKmpmiJwq49M9Lkg/UvWXI4ZpCiZZr/sqec6BMGpqTVkYxWA
         cVm+YPhRBl4MzNSeQje9pwKWQpriZtnU0X5EOAUGqvAaPVrZc1o+AqfbpTOWPAS7xedj
         NeKjthqZjHn47XbJI01BujM/Qqz6u4sV8QuoKLJHgyyNAJMbFX+P6ZpxvLHGq8LI9NCM
         3+5uWBIATZbexy+LEmbyx1X5RBr1FnMQ/jhWcB65x7YEkmjhauIyQHGRlBauW9bpDgP3
         1pcQ==
X-Gm-Message-State: AC+VfDz7TDlfz1ZyZwUiasqaJAgQtWC9CZjfYQl5zF4EBb7IjfIu+wxP
	/FGiyQ0nfPGJ7NozOXcRvacHqDR3l88=
X-Google-Smtp-Source: ACHHUZ7pDPsjxp22ZBE1u1/Uah/By/lnt+AhFZjnFwgD5ynsObGG1l/aZrQDiL9vSQxwmBbFq6ApkQ==
X-Received: by 2002:ac8:4e41:0:b0:3f2:626:9c3 with SMTP id e1-20020ac84e41000000b003f2062609c3mr3705754qtw.36.1682693737945;
        Fri, 28 Apr 2023 07:55:37 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id 202-20020a370ad3000000b0074d673f1b47sm6809417qkk.31.2023.04.28.07.55.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 07:55:37 -0700 (PDT)
Message-ID: <26f84771-cf11-ee25-fcd4-6e8a37e79381@gmail.com>
Date: Fri, 28 Apr 2023 10:55:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
 <a0f6365f-2c89-f12e-bc3b-92dfbee348ee@gmail.com>
 <CAFFpLrFBT+WhWKfxivM_a9RjW7g9WhDK2Hq9vJVMRXxZJWwSaw@mail.gmail.com>
 <deb40247-34a6-a7a7-af1d-306252c13e56@gmail.com>
 <CAFFpLrGfEMB=5Oz8v6WnAnhb4nNS9aJZM3UBbomS7GmBeMnVQA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFFpLrGfEMB=5Oz8v6WnAnhb4nNS9aJZM3UBbomS7GmBeMnVQA@mail.gmail.com>
Message-ID-Hash: E7YWSXMIJRW5EFRU46Y3O5N4GR6NCBJF
X-Message-ID-Hash: E7YWSXMIJRW5EFRU46Y3O5N4GR6NCBJF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: static ip on E312 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7YWSXMIJRW5EFRU46Y3O5N4GR6NCBJF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2129946315476808384=="

This is a multi-part message in MIME format.
--===============2129946315476808384==
Content-Type: multipart/alternative;
 boundary="------------Yc2LkTMC8o0UGbByescYL30u"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Yc2LkTMC8o0UGbByescYL30u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/04/2023 10:41, JORGE GONZALEZ ORELLANA via USRP-users wrote:
> I end up making a interfaces file under /etc/network with this content:
>
> |$ auto lo $ iface lo inet loopback $ auto eth0 $ iface eth0 inet=20
> static $ address 192.168.10.42 $ netmask 255.255.255.0 |
> and it works correctly, now i have a static ip.
>
> another question that i have, it how to take a file from the USRP, i=20
> been try scp -p and i get this on the terminal
>
> root@ni-e31x-32132F0:~# scp -p piano.wav uno@192.168.10.2:/~
> ssh: connect to host 192.168.10.2 port 22: Connection refused
> lost connection
>
> running ping from the usrp to the host pc works fine.
You're not running an SSHD server on your PC host.
>
> El jue, 27 abr 2023 a las 21:30, Marcus D. Leech=20
> (<patchvonbraun@gmail.com>) escribi=C3=B3:
>
>     On 27/04/2023 14:12, JORGE GONZALEZ ORELLANA wrote:
>     > eth0.network =C2=A0sfp0.network =C2=A0 =C2=A0sfp0_2.network =C2=A0=
sfp1.network
>     > =C2=A0sfp1_2.network
>     > int0.network =C2=A0sfp0_1.network =C2=A0sfp0_3.network =C2=A0sfp1=
_1.network
>     > =C2=A0sfp1_3.network
>     >
>     I followed the guide here:
>
>     https://wiki.archlinux.org/title/systemd-networkd
>
>     Since the E31x series use systemd-networkd
>
>     The config files are under /data/network, but other than that, it
>     follows systemd-networkd
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Yc2LkTMC8o0UGbByescYL30u
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/04/2023 10:41, JORGE GONZALEZ
      ORELLANA via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFFpLrGfEMB=3D5Oz8v6WnAnhb4nNS9aJZM3UBbomS7GmBeMnVQA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><span style=3D"font-family:arial,sans-serif">I end up making
            a interfaces file under /etc/network with this content:</span=
></div>
        <div><span style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        <div>
          <pre class=3D"gmail-notranslate"><span style=3D"font-family:ari=
al,sans-serif"><code>$ auto lo
$ iface lo inet loopback

$ auto eth0
$ iface eth0 inet static
$ address 192.168.10.42
$ netmask 255.255.255.0

</code></span></pre>
        </div>
        <div><span style=3D"font-family:arial,sans-serif">and it works
            correctly, now i have a static ip.</span></div>
        <div><span style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        <div><span style=3D"font-family:arial,sans-serif">another questio=
n
            that i have, it how to take a file from the USRP, i been try
            scp -p and i get this on the terminal</span></div>
        <div><span style=3D"font-family:arial,sans-serif"><br>
          </span></div>
        <div><span style=3D"font-family:arial,sans-serif">root@ni-e31x-32=
132F0:~#
            scp -p piano.wav <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:uno@192.168.10.2:/~">uno@192.168.10.2:/~</a><br>
            ssh: connect to host 192.168.10.2 port 22: Connection
            refused<br>
            lost connection</span><br>
        </div>
        <div><br>
        </div>
        <div>running ping from the usrp to the host pc works fine.<br>
        </div>
      </div>
    </blockquote>
    You're not running an SSHD server on your PC host.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFFpLrGfEMB=3D5Oz8v6WnAnhb4nNS9aJZM3UBbomS7GmBeMnVQA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El jue, 27 abr 2023 a las
          21:30, Marcus D. Leech (&lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          27/04/2023 14:12, JORGE GONZALEZ ORELLANA wrote:<br>
          &gt; eth0.network =C2=A0sfp0.network =C2=A0 =C2=A0sfp0_2.networ=
k
          =C2=A0sfp1.network =C2=A0 <br>
          &gt; =C2=A0sfp1_2.network<br>
          &gt; int0.network =C2=A0sfp0_1.network =C2=A0sfp0_3.network
          =C2=A0sfp1_1.network <br>
          &gt; =C2=A0sfp1_3.network<br>
          &gt;<br>
          I followed the guide here:<br>
          <br>
          <a href=3D"https://wiki.archlinux.org/title/systemd-networkd"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://wiki.archlinux.org/ti=
tle/systemd-networkd</a><br>
          <br>
          Since the E31x series use systemd-networkd<br>
          <br>
          The config files are under /data/network, but other than that,
          it <br>
          follows systemd-networkd<br>
          <br>
        </blockquote>
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
    <br>
  </body>
</html>

--------------Yc2LkTMC8o0UGbByescYL30u--

--===============2129946315476808384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2129946315476808384==--
