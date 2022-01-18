Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E37E492EB7
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 20:50:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 530823855B7
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 14:50:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JVvYZLrW";
	dkim-atps=neutral
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D8997384D53
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 14:49:35 -0500 (EST)
Received: by mail-lf1-f49.google.com with SMTP id e3so72390107lfc.9
        for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 11:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+JaVtLEOj3eBJCEMVGDqTj4JETnLGDXp7AlKt0lDLwc=;
        b=JVvYZLrWbv2OTmGqHWFz86lcEjnsOcnExqDY/rKBItIassisL2YefmJf8ywFEXaOxl
         /kWQkNSQg3p1X+vb2xlkgG7ls0o8J+fyPnhSrgmlXuATz/QITcaS9kcrWIf8EXrdD2nw
         RLCOsrHMi85Hhogl9/6b/ge4KBRN+1/hS5gjmWXS+V/tmOfOsjxoDVLvMbHP3drzgfJp
         lBHCahglq+/NJD3fP42OwxsdfE86l0ZhlQ6kTf3IJri1ytHNKLRmVB6HblJUSMmAWlmR
         jhqHdm4YagAeLYZ+GADdSwpasIEwHZloG8uBR2HNS9ngir8HW2cggyxg8FzHy3wf5uE3
         a+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+JaVtLEOj3eBJCEMVGDqTj4JETnLGDXp7AlKt0lDLwc=;
        b=327Z0WCnKErX0CbVakWB4benpd7HN97/HJp776B8OjxXot2xyD6BVuWb2H15rVJ42C
         Of6GlfhOutVAqBsZ3Wgzdn52StHHUZ6dL/OX2Ua2bwzYs5r7v7ZmKaIitmFB1usLBR3V
         JajjP2OSFqFbsSTaPXAwyglURE/G4g6HpUQn7UPM8aAt+1Wm/rIViD/f1YodpjSi6ty2
         Goc+2DzswdtfG/aFnrHiA22nJeXYS5BYTdxsxY6t/Fr5hQPL1oFyXQNi4iHsMnXdw7MD
         qXCQYG7EKeOUnYIMiFLkYMkSVzgk8Ev3glZPRSmq1dXepjLsvPHWul5lVA/d4Go9VtWJ
         4lKQ==
X-Gm-Message-State: AOAM533JXW6yMKPUSUenMKPYi8sw8By4FtTJ8zqOaitCN2Xs7g3sl9PR
	tt5EwallC2mGgpXFKTrqXGOBtpn/I9lj1qyoknA=
X-Google-Smtp-Source: ABdhPJyVXs41PxSXV2EwaterGUsxpg2OTn2Nc2tv+g6JuWq9Bdkrhya4KyiciIHu+so8zWSFjQ/wEFKMX67YiRI4dNc=
X-Received: by 2002:a2e:9092:: with SMTP id l18mr11270147ljg.118.1642535374182;
 Tue, 18 Jan 2022 11:49:34 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com> <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
 <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com>
In-Reply-To: <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Tue, 18 Jan 2022 14:49:23 -0500
Message-ID: <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZTEDAH7UZYZFAJQ3QIJ3NOH7OB7ATSUY
X-Message-ID-Hash: ZTEDAH7UZYZFAJQ3QIJ3NOH7OB7ATSUY
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTEDAH7UZYZFAJQ3QIJ3NOH7OB7ATSUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0678356892108619718=="

--===============0678356892108619718==
Content-Type: multipart/alternative; boundary="000000000000825c4a05d5e09178"

--000000000000825c4a05d5e09178
Content-Type: text/plain; charset="UTF-8"

working on this now. where do i get the path mentioned above?

On Tue, Jan 18, 2022 at 12:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-17 23:34, Paul Atreides wrote:
> > Posting on both GNURadio and USRP lists here, since my application
> > overlaps both gr-uhd/GNURadio and the UHD API.
> > The top-level question is, can gr-uhd support all the necessary
> > N321-specific commands necessary to export the TX LO from RF0 to RF1?
> > That would include running the command to set the 1x4 splitter. That's
> > the one in question.
> >
> >
> get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
> >
> > If not, Marcus suggested using a python snippet. I've used that with
> > RFNoC before, but how would that work?
> > I'm guessing it would be an "after-init" and then call the python API
> > for the above (if that command is supported)?
> >
> > Thanks
> >
> Yeah, I'd say "after-init", and have it grab the object name of the usrp
> object?  Using Pythonic, rather than C++ syntax?
>
>
>

--000000000000825c4a05d5e09178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">working on this now. where do i get the path mentioned abo=
ve?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jan 18, 2022 at 12:02 AM Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-01-17 23:34, Pau=
l Atreides wrote:<br>
&gt; Posting on both GNURadio and USRP lists here, since my application <br=
>
&gt; overlaps both gr-uhd/GNURadio and the UHD API.<br>
&gt; The top-level question is, can gr-uhd support all the necessary <br>
&gt; N321-specific commands necessary to export the TX LO from RF0 to RF1? =
<br>
&gt; That would include running the command to set the 1x4 splitter. That&#=
39;s <br>
&gt; the one in question.<br>
&gt;<br>
&gt; get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;mboards/0/dbo=
ards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export&quot;).set(tr=
ue)<br>
&gt;<br>
&gt; If not, Marcus suggested using a python snippet. I&#39;ve used that wi=
th <br>
&gt; RFNoC before, but how would that work?<br>
&gt; I&#39;m guessing it would be an &quot;after-init&quot; and then call t=
he python API <br>
&gt; for the above (if that command is supported)?<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
Yeah, I&#39;d say &quot;after-init&quot;, and have it grab the object name =
of the usrp <br>
object?=C2=A0 Using Pythonic, rather than C++ syntax?<br>
<br>
<br>
</blockquote></div>

--000000000000825c4a05d5e09178--

--===============0678356892108619718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0678356892108619718==--
