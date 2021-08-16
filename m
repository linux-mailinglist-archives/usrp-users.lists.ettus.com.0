Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 977253EDF81
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 23:52:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83850383E56
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 17:52:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kte6UsXR";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 361C03839A7
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 17:51:40 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id x1so2049449qtw.5
        for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 14:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=X/L9ymk1SNirs8ooYWzkbS4lzOOjGusSIuju0boxIRg=;
        b=Kte6UsXRwvzTsoArnBCOL6kn4LPAL8ypMcZV116Rz3BTpkWeL51wF+j+I6p4kSBwkc
         /OmSXqVUpK1aNIgFP1tXbfTp9E4caBo7ZzbxjQbWBkQQ+F5FSCe3tjiXyaI4Vcpm0OuL
         1G3Dwj0I3MzonHMct2tsK9s4j45b+343NB7dVud30KlONlLtnbLs+h0erK43WBtvx8yY
         6HhucKcDNHoRV+9VREk9lkFN5btJ5AOB5kU66mgzoxb1srIDXU+G3zo+UqQoi3kStzUP
         wPmgaw6t9ns2BE18rzHe7Pvc8BHB1ftcOwBfsVOcnq4TTRXwazZwTBToLcLLORoOIKb3
         qUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=X/L9ymk1SNirs8ooYWzkbS4lzOOjGusSIuju0boxIRg=;
        b=aeUWtpkzIpWmEJrHXDJQSkOqStRljN2ODyHV5XkUbc/dx/evs5uoN2OqF6yomrKMKy
         cGpeKCeVOz796TbW9+6BMY2Hbhobt+9Vmh1neAyLa+ZavWOnrVGd2yPfOBYjG2WHw3E/
         xl/gYaunVgbcj4E87/WNVJOQESkrLEVENqYVhdea485yoHz+08CA/kVjspwrIrBVmcZu
         Eby5sbmmGyD8gFA6KG8ZqryrrCGEZH8L6P+9OfQyf7lc/aDGOWKDpiMlX05Ng7ks4MPV
         TXCpjG3/lOmqgmtYRa1jejebd1JWKxtKdqp2RpCCkLO8tr240ppson9JxXIR8wxUs6N9
         p2UQ==
X-Gm-Message-State: AOAM531LQvHiDcdj4fp/NljTxQtI3MykYEC12nX/bhWlzCDQfEEns0w0
	mbeN2IiOo5ekHN26olVxxt5qLCmS4613Lw==
X-Google-Smtp-Source: ABdhPJxtiThEYYnLhKsSor0oqrcCtyXJFP2cVCaLI3R3ZicJQTmC99fVr1LL8juiacLXDDX66L0yWQ==
X-Received: by 2002:ac8:4e24:: with SMTP id d4mr108330qtw.277.1629150699953;
        Mon, 16 Aug 2021 14:51:39 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s13sm1849qtk.22.2021.08.16.14.51.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:51:39 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <705ebe57-2136-5f87-3ce9-ba693b67d569@gmail.com>
Date: Mon, 16 Aug 2021 17:51:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 7NR7HCXIL7XQOXQ7QA2FLKUZSNU22MP6
X-Message-ID-Hash: 7NR7HCXIL7XQOXQ7QA2FLKUZSNU22MP6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7NR7HCXIL7XQOXQ7QA2FLKUZSNU22MP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0126169893857348428=="

This is a multi-part message in MIME format.
--===============0126169893857348428==
Content-Type: multipart/alternative;
 boundary="------------8DEF54ECF21252981C527B2F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8DEF54ECF21252981C527B2F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-16 9:53 a.m., rblack@swri.org wrote:
>
> at present we have data flowing in a loopback mode- that=E2=80=99s good=
.=20
> However, the data flowing is the full 200MHz BW of the radio blocks,=20
> as if the DDC and DUC rfnoc blocks were using output/input rates of=20
> 200M, i.e. no decimation, despite being configured for various=20
> decimated output rates. Don=E2=80=99t know why, since the DDC properly=20
> decimates data when connected to a streamer for host QT display.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

You should probably share a minimal flow-graph that shows the issue so=20
it can be properly evaluated and/or debugged.




--------------8DEF54ECF21252981C527B2F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-16 9:53 a.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rblack@swri.or=
g">rblack@swri.org</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>at present we have data flowing in a loopback mode- that=E2=80=99=
s
        good. However, the data flowing is the full 200MHz BW of the
        radio blocks, as if the DDC and DUC rfnoc blocks were using
        output/input rates of 200M, i.e. no decimation, despite being
        configured for various decimated output rates. Don=E2=80=99t know=
 why,
        since the DDC properly decimates data when connected to a
        streamer for host QT display. </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <p>You should probably share a minimal flow-graph that shows the
      issue so it can be properly evaluated and/or debugged.</p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------8DEF54ECF21252981C527B2F--

--===============0126169893857348428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0126169893857348428==--
