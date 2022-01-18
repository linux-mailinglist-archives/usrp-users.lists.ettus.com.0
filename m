Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBE9492F25
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 21:20:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC41D3856F2
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 15:20:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y7VdXGsD";
	dkim-atps=neutral
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B2343854AE
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 15:19:20 -0500 (EST)
Received: by mail-lf1-f54.google.com with SMTP id o15so75392730lfo.11
        for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 12:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tHX1f3jmUwditDTeuvy1wgOp7ZfQ86WLK5hHq4eXP1A=;
        b=Y7VdXGsDsUwz+NG31KacpfCS8o7FpA1XHUs6OwoAqYwsky6uAs3SJ+eeZWuFwCve38
         XAqWo6HZa6MX0ARDDr/7FAUWykp63PQX2mLflYQIqVGmNvK6ZWrsuwnK+lsnP73PokAO
         JRGHqXwTiHdVyNBacqOK3DNbFGphhDD5C4UbX65NozmN181Iqs0ZAu4Jjmn1GBNOLtkj
         J4mpeFLp+9gGTped0qfP/G1T625m9r3VYQqgSLXvQ5o+Sb/XXEUHq20SO7Hu/LEKVUc4
         H8iEqT4HmfPUz84o7soQ+AN5NzXLx2pIip++KNEuy8xjgyRsD0EGm3uc5TnWWe1HeLzM
         swEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tHX1f3jmUwditDTeuvy1wgOp7ZfQ86WLK5hHq4eXP1A=;
        b=5ism6iFr31dY2lkLnKqx3jCv+sgfb6g5jB6zjjXA/RdYBFyNQe/GgYWC5WWG8OP7aO
         Ss5iColEzN8Ij9oVRw3xcB4UcVetDIoW6l540UbmKuU9+7L9vPeViHmVNW91plmOhDEZ
         +aKYd6s67bRwsKyeDVZPeXJurzbOSlaI7HA6WwoFGBZoGBhohW+ac+jiKF7MVews35LZ
         Hp15K1Jq2WsLbLZwFEhfVUJSwzhxwZgEeFoUErYyT7Umjxrt+hCUm5v1bV5FD2ah6EX6
         gpW4fDnuvn+kN8DOYuUpGCLmvojBKDUbpaKYof+KA4yz4WB6IdspEu7qZx2wOC2qmFVy
         6igg==
X-Gm-Message-State: AOAM5317Ut0b3Jg3b/RSFmRwF4MtH4HlJPtRIJ/E9jxmuCA7MJ2LX3oM
	WwxYcq69qsgZEU3iSKn8NZSLBeZCXlmSVPZpBW4=
X-Google-Smtp-Source: ABdhPJyxd7tM1Ok7inK7BdmolruxWebQFLhYs1xL5AUZM5FCmjmtYPNm/EY98AS178u8JNyVR7tREDU1h1/jFOdl6v8=
X-Received: by 2002:a2e:8011:: with SMTP id j17mr22362036ljg.92.1642537159026;
 Tue, 18 Jan 2022 12:19:19 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com> <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
 <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com> <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
 <ecbce775-f321-94ee-d00d-2902239f4c6b@gmail.com>
In-Reply-To: <ecbce775-f321-94ee-d00d-2902239f4c6b@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Tue, 18 Jan 2022 15:19:07 -0500
Message-ID: <CACwKM9L8Mkb++GxXrnwx97B3y8EWegPQWUmbLchgR03capYjTQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 2CTCCZ3ZBV7XYBY4FL7FUYQAAHJQRJ3X
X-Message-ID-Hash: 2CTCCZ3ZBV7XYBY4FL7FUYQAAHJQRJ3X
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2CTCCZ3ZBV7XYBY4FL7FUYQAAHJQRJ3X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3089452900025771546=="

--===============3089452900025771546==
Content-Type: multipart/alternative; boundary="000000000000e4ec5605d5e0fbe0"

--000000000000e4ec5605d5e0fbe0
Content-Type: text/plain; charset="UTF-8"

not exactly.
so i'm trying to use the python API to run the equivalent of
get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)

in python:
import uhd
import numpy as np
usrp = uhd.usrp.MultiUSRP()
usrp.get_tree().access_bool("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)

RuntimeError: LookupError: Path not found in tree:
/mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export

so my question is "what paths DO exist in the tree?"



On Tue, Jan 18, 2022 at 3:04 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-18 14:49, Paul Atreides wrote:
>
> working on this now. where do i get the path mentioned above?
>
> You can use:
>
> uhd_usrp_probe to get the entire property tree of the device, if that's
> what you're asking.
>
>
>
> On Tue, Jan 18, 2022 at 12:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-01-17 23:34, Paul Atreides wrote:
>> > Posting on both GNURadio and USRP lists here, since my application
>> > overlaps both gr-uhd/GNURadio and the UHD API.
>> > The top-level question is, can gr-uhd support all the necessary
>> > N321-specific commands necessary to export the TX LO from RF0 to RF1?
>> > That would include running the command to set the 1x4 splitter. That's
>> > the one in question.
>> >
>> >
>> get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>> >
>> > If not, Marcus suggested using a python snippet. I've used that with
>> > RFNoC before, but how would that work?
>> > I'm guessing it would be an "after-init" and then call the python API
>> > for the above (if that command is supported)?
>> >
>> > Thanks
>> >
>> Yeah, I'd say "after-init", and have it grab the object name of the usrp
>> object?  Using Pythonic, rather than C++ syntax?
>>
>>
>>
>

--000000000000e4ec5605d5e0fbe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>not exactly. <br></div><div>so i&#39;m trying to use =
the python API to run the equivalent of </div><div>get_device()-&gt;get_tre=
e()-&gt;access&lt;bool&gt;(&quot;mboards/0/dboards/A/tx_frontends/0/los/lo1=
/lo_distribution/LO_OUT_0/export&quot;).set(true)</div><div><br></div><div>=
in python:<br></div><div>import uhd</div><div>import numpy as np</div><div>=
usrp =3D uhd.usrp.MultiUSRP()</div><div>usrp.get_tree().access_bool(&quot;m=
boards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export&q=
uot;).set(true)</div><div><br></div><div>RuntimeError: LookupError: Path no=
t found in tree: /mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distributio=
n/LO_OUT_0/export</div><div><br></div><div>so my question is &quot;what pat=
hs DO exist in the tree?&quot;<br></div><div><br></div><div><br></div><div>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jan 18, 2022 at 3:04 PM Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-18 14:49, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">working on this now. where do i get the path
        mentioned above?<br>
      </div>
    </blockquote>
    You can use:<br>
    <br>
    uhd_usrp_probe to get the entire property tree of the device, if
    that&#39;s what you&#39;re asking.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 18, 2022 at 12:02
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2022-01-17 23:34, Paul Atreides wrote:<br>
          &gt; Posting on both GNURadio and USRP lists here, since my
          application <br>
          &gt; overlaps both gr-uhd/GNURadio and the UHD API.<br>
          &gt; The top-level question is, can gr-uhd support all the
          necessary <br>
          &gt; N321-specific commands necessary to export the TX LO from
          RF0 to RF1? <br>
          &gt; That would include running the command to set the 1x4
          splitter. That&#39;s <br>
          &gt; the one in question.<br>
          &gt;<br>
          &gt;
get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;mboards/0/dboards/=
A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export&quot;).set(true)<b=
r>
          &gt;<br>
          &gt; If not, Marcus suggested using a python snippet. I&#39;ve
          used that with <br>
          &gt; RFNoC before, but how would that work?<br>
          &gt; I&#39;m guessing it would be an &quot;after-init&quot; and t=
hen call
          the python API <br>
          &gt; for the above (if that command is supported)?<br>
          &gt;<br>
          &gt; Thanks<br>
          &gt;<br>
          Yeah, I&#39;d say &quot;after-init&quot;, and have it grab the ob=
ject name
          of the usrp <br>
          object?=C2=A0 Using Pythonic, rather than C++ syntax?<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>
</blockquote></div>

--000000000000e4ec5605d5e0fbe0--

--===============3089452900025771546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3089452900025771546==--
