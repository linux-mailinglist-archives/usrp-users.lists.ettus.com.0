Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5600F492EF6
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 21:05:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A52438560F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 15:05:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q7tEXt3v";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id AFC06384167
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 15:04:44 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id c19so29787qtx.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 12:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=ojjDawgXFPPv49eFsWEGCUbrbPzQ/eeBrslGo3GD5uo=;
        b=Q7tEXt3vz2gsb9C8XY4o/rNiYGhlelPlDXrtA0Cig45/jubuxqAKja543gM3wRqc1l
         x4RBwPyXwUNgW/I6l2v+y+2JS41wVyLPJn4VFSMsqIZUORZt5YZlbfZth3igWsip1gZk
         QsO8W/gZoB1C6W3yMkJsQKOfiAUSP/SSXT2pZbm+SvS3C35zyaBvJWLyaKy2xXitmDn7
         QKkKk1Qw5oPtK61+NKiJE3neriuddrBnTFkPI/XYvey0Zqo7iy2G6CgNKPj/nYTcSNZl
         DuNSVkavMVdEjs9sgSn1wBBxrEw/lkoU59MD5uLJrQl+pkhgQTBnIU/tFeHG6YZLRPgQ
         /RSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=ojjDawgXFPPv49eFsWEGCUbrbPzQ/eeBrslGo3GD5uo=;
        b=2oNXQBP5DFm8dE10eEjydPPrKKCmJQNprW1gdvR0mDLFp2Gxgv4ZcAENceYrRj9eHa
         Ei7LyLCxHL0x1IlR5JJxMqibjhw6zSk8N6O0kcYQA53TN94kHhjC9Wgum8GQdcOFExmF
         eAus6JhMRVIfpf1PAcD5zGoVhxxoUuxlDlZ/Fy1X6CDAR52sopGxjKZiA37+Zo+h4J9W
         yEah/cSEB71IW0nJVkwoGLsqHZtCuAkBzsF5Qfo/Fvnk02ejKz8rt/3zWS6HMM58mTbs
         J6Mwk1IVfz7brK9hh99pV7jATxtdJgcQBH7cmWdaDX3PE0Hnl9sv1vQfZGUosdDAn8oK
         nDJQ==
X-Gm-Message-State: AOAM530+HkcEOfP86WPxTJwPLt81+iYFYis3Tf91a5yCMfSJXSKGtgSQ
	8eB/mrDpRaFP6HSTGMWW4T4=
X-Google-Smtp-Source: ABdhPJzd3Ecu9fAd6DP56PXIOR5o3HNHWwAAHpEIA/To6JEM/XJmETpKx9GCw2wocx/bOKuJu13OWQ==
X-Received: by 2002:ac8:5f4f:: with SMTP id y15mr3116462qta.362.1642536283976;
        Tue, 18 Jan 2022 12:04:43 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a19sm469066qtx.7.2022.01.18.12.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 12:04:43 -0800 (PST)
Message-ID: <ecbce775-f321-94ee-d00d-2902239f4c6b@gmail.com>
Date: Tue, 18 Jan 2022 15:04:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
 <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com>
 <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
 <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
 <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com>
 <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
Message-ID-Hash: 34WYJHGYMUSNIDE6UXGMRFA7ECSDM42E
X-Message-ID-Hash: 34WYJHGYMUSNIDE6UXGMRFA7ECSDM42E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/34WYJHGYMUSNIDE6UXGMRFA7ECSDM42E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1633254008043956221=="

This is a multi-part message in MIME format.
--===============1633254008043956221==
Content-Type: multipart/alternative;
 boundary="------------y7ZJkVM1Il7ldoHPH8d3KqmN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------y7ZJkVM1Il7ldoHPH8d3KqmN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-18 14:49, Paul Atreides wrote:
> working on this now. where do i get the path mentioned above?
You can use:

uhd_usrp_probe to get the entire property tree of the device, if that's=20
what you're asking.


>
> On Tue, Jan 18, 2022 at 12:02 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-01-17 23:34, Paul Atreides wrote:
>     > Posting on both GNURadio and USRP lists here, since my applicatio=
n
>     > overlaps both gr-uhd/GNURadio and the UHD API.
>     > The top-level question is, can gr-uhd support all the necessary
>     > N321-specific commands necessary to export the TX LO from RF0 to
>     RF1?
>     > That would include running the command to set the 1x4 splitter.
>     That's
>     > the one in question.
>     >
>     >
>     get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_fron=
tends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>     >
>     > If not, Marcus suggested using a python snippet. I've used that
>     with
>     > RFNoC before, but how would that work?
>     > I'm guessing it would be an "after-init" and then call the
>     python API
>     > for the above (if that command is supported)?
>     >
>     > Thanks
>     >
>     Yeah, I'd say "after-init", and have it grab the object name of
>     the usrp
>     object?=C2=A0 Using Pythonic, rather than C++ syntax?
>
>

--------------y7ZJkVM1Il7ldoHPH8d3KqmN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-18 14:49, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">working on this now. where do i get the path
        mentioned above?<br>
      </div>
    </blockquote>
    You can use:<br>
    <br>
    uhd_usrp_probe to get the entire property tree of the device, if
    that's what you're asking.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 18, 2022 at 12:=
02
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-01-17 23:34, Paul Atreides wrote:<br>
          &gt; Posting on both GNURadio and USRP lists here, since my
          application <br>
          &gt; overlaps both gr-uhd/GNURadio and the UHD API.<br>
          &gt; The top-level question is, can gr-uhd support all the
          necessary <br>
          &gt; N321-specific commands necessary to export the TX LO from
          RF0 to RF1? <br>
          &gt; That would include running the command to set the 1x4
          splitter. That's <br>
          &gt; the one in question.<br>
          &gt;<br>
          &gt;
get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;("mboards/0/dboards/A/t=
x_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)<br>
          &gt;<br>
          &gt; If not, Marcus suggested using a python snippet. I've
          used that with <br>
          &gt; RFNoC before, but how would that work?<br>
          &gt; I'm guessing it would be an "after-init" and then call
          the python API <br>
          &gt; for the above (if that command is supported)?<br>
          &gt;<br>
          &gt; Thanks<br>
          &gt;<br>
          Yeah, I'd say "after-init", and have it grab the object name
          of the usrp <br>
          object?=C2=A0 Using Pythonic, rather than C++ syntax?<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------y7ZJkVM1Il7ldoHPH8d3KqmN--

--===============1633254008043956221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1633254008043956221==--
