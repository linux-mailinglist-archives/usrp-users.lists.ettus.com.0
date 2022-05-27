Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 095165363B4
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 16:04:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46F2C384A33
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 10:04:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653660257; bh=f/jn99Qz1zVVZ+3j+PmhwJ8YB4eTyenjfKwbIjJ0R2k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aCV919duZd4uWKntzDmoQpEBV7F+OptdGIahbRtc6M2REOZ+5duw94JmvUOMjNxQa
	 lo1nciWT460h6bDcWY52Zw4ZZGqTdJgEx6SvDiXpJxGfqTF6sZ1iZHx0jeNsYzCqiC
	 uuPH2DI9EKVGB0fIZ76i/DsincJgUurPAirM/T/4H8mCmvvE7VBIancpfKf46EdNpF
	 tMGgwaX77ik9EoF1qRItRVH8iyiuTSiYaojCMUmd/TL99sPig9yocDAkI8WGOMqoaQ
	 iyKQGaq5MNCGAptyclkDEEaB3asWBx9zA8scPswXW3KLfBahkQyrpuwlfms5cSbiGe
	 EwzloM/Jbv+8w==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id EE17A3845AC
	for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 10:03:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="zgtuJdjE";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id i66so5744996oia.11
        for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=euZwBfBxUdulRa4M+W3ovNg/FkUMWhJqNzG+5RXQgPA=;
        b=zgtuJdjEBTfuVgxY4lLBvFJGVQKTf6dQw6ZsiOSFTdho6vqVFluKybojFgBizM5xFZ
         AiHetTNr9UHsCRZBN0v9L0QmydkuaE2qlzqNXcoXqpRnUr/5QGv66/tSW4GUUR/VRFCv
         m0fuwZTGHhA+ANaBEMwStDJxTAzk1gIQpv3AYbIQVHW52oUY/md8uoL/gnvUiUfMf3Jk
         gNfxWlYh0P5CO0abDdrP4RJ5al0D5238RPSbYv+PHl7CcuG3f8tHz1DZ5DepiKGWO1K5
         nrxSNatvUc6z345LBjg1Lrcwzo1vsCpo7LxldchQYD7I7wQnHmmLibeShAlBXg9obh70
         pNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=euZwBfBxUdulRa4M+W3ovNg/FkUMWhJqNzG+5RXQgPA=;
        b=dkdhKVUuh9QQKfJYvwmwHCeiu/T2znsk3JemVsTUl9YThN7y/p1rwGkuRqdYpX7QnW
         hSAVvAncq0xgel4ewxfpRiW6gHAOm0w/Zx+PQ8RmQvaHRpCPHhkQ8N7Er+BccbqH+jDP
         EcTJ1gLOZowwaNeqWdHdGqLI0o0TpF5yZlCRg831rp2lM71umYkEWX5rtN/Z5Pty5e/x
         mBgjfXk0jo+xE1blPkUWybCB8TgKrXtCZgf7JmsRKbMZB/oMlRFo6tHIgD1VzPtMoxg6
         2HVtxzPi2AECkFbLa2aU5iQrG3Y0wyC6OSebfO1VrOIq42/ZB+1ao39LEhZuAjEefJEi
         C/cA==
X-Gm-Message-State: AOAM533XrdYqcSLcRpVczMAAvBnKvgXftZ6Rio7HpvHg2cHqywp+ZlBs
	ca+aqvaA0NBf8cVU5UNsRQfhFTNaHxn9o6na9n7Rr+l3PTAuWzSD
X-Google-Smtp-Source: ABdhPJwdhJUm/HTSmk5rQPzbNvDDMrBrgoXetSnYAXSh7oXUSEmewcZVxpeKp9q7HO5UIfzr1y/b2Ck5tJmQGudiors=
X-Received: by 2002:aca:2314:0:b0:32b:6ea3:70a5 with SMTP id
 e20-20020aca2314000000b0032b6ea370a5mr3972863oie.157.1653660193574; Fri, 27
 May 2022 07:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=MkbDHGdRQ@mail.gmail.com>
 <f276da5b-aff2-2bea-6a49-a86b372cf08f@gmail.com> <CAHqKquwxtYRHdaX503VP-eRwo+p9NU9Eu-fLi85vzjagW1y9AQ@mail.gmail.com>
 <b47df687-ef8c-f21e-bc28-cb675c982d23@gmail.com>
In-Reply-To: <b47df687-ef8c-f21e-bc28-cb675c982d23@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Fri, 27 May 2022 10:03:02 -0400
Message-ID: <CAGNhwTOg+-AGFkKh6ZNwpx5USvNiSP+P70rz8iChP7JrcNs2-A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YRP4B5SRB6AQTGJ23BLURBQHPSMVFBZI
X-Message-ID-Hash: YRP4B5SRB6AQTGJ23BLURBQHPSMVFBZI
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: rouba zeitoun <roubazeitoun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: unmet dependencies libuhd4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YRP4B5SRB6AQTGJ23BLURBQHPSMVFBZI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6791148096810757318=="

--===============6791148096810757318==
Content-Type: multipart/alternative; boundary="0000000000006ae63205dffec48a"

--0000000000006ae63205dffec48a
Content-Type: text/plain; charset="UTF-8"

I also had this issue on Ubuntu 20.04, which was up to date as of a week or
2 ago before I noticed this issue (it might have been around for quite some
time; I hadn't updated this specific computer in ~6 months). Here's what I
did to resolve it, allowing "apt" to work again for me. I'm pretty sure the
issue is with the UHD PPA info. I will push this info to Ettus R&D and
hopefully they can shed some light on this issue -- and hopefully fix it! -
MLD

1) Either via some commandline / file editing or in the "Software &
Updates" app ("Other Software" tab):

disable all entries for "ppa.launchpad.net/ettusresearch". save files /
Close the app & it should update the local cache of software.

2) run "sudo apt update" just in case.

3) run "sudo apt --fix-broken install" and the apt-installed UHD packages
should be removed.

Yes, I know that UHD PPA is now disabled, and hence installing UHD will be
less simple. That said, at least "apt" is working again!

On Thu, May 26, 2022 at 8:37 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-26 02:56, rouba zeitoun wrote:
>
> Hello Marcus,
>
> I had installed it a couple of months ago, it was a general upgrade
> through the terminal (using "sudo apt upgrade"), also i checked my ubuntu
> version and yes it is bionic.
>
> thank you for your support
>
> Kind Regards
> Rouba
>
> What I would try to do is to completely uninstall UHD first, then try to
> do a 4.2 install from the PPA.    But, to be honest, I'm a bit surprised
> that sometime
>   as modern as UHD 4.2 will even build for Ubuntu 18.04.  The current LTS
> release of Ubuntu is 22.04, and I've been running 21.10 for over a year.
>
> sudo apt remove uhd uhd-host
>
>
>
> On Wed, May 25, 2022 at 7:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-05-25 04:27, rouba zeitoun wrote:
>>
>> Hello USRP Support
>>
>> Hope you have a nice day.
>>
>> I was trying to upgrade my system and i got this message
>>
>>
>>
>>
>>
>> *You might want to run 'apt --fix-broken install' to correct these. The
>> following packages have unmet dependencies:  libuhd-dev : Depends:
>> libuhd4.2.0 (= 4.2.0.0-0ubuntu1~bionic1) but it is not installed  uhd-host
>> : Depends: libuhd4.2.0 (= 4.2.0.0-0ubuntu1~bionic1) but it is not installed
>> E: Unmet dependencies. Try 'apt --fix-broken install' with no packages (or
>> specify a solution).*
>>
>> after i tried *' sudo apt --fix-broken install' *i got this error
>>
>>
>>
>>
>>
>> *dpkg: error processing archive
>> /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb
>> (--unpack):  trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs',
>> which is also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~bionic1 Errors
>> were encountered while processing:
>>  /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb E:
>> Sub-process /usr/bin/dpkg returned an error code (1)*
>>
>> How may I solve this problem?
>>
>> Kind Regards
>> Rouba
>>
>> How did you install UHD initially?  What did you do to try to upgrade?
>> I'll note that "Bionic" is a version of Ubuntu that is quite out-of-date at
>> this point, but there do
>>   appear  to be PPA for UHD 4.2 for bionic.
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006ae63205dffec48a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also had this issue on Ubuntu 20.04, which was up to dat=
e as of a week or 2 ago before I noticed this issue (it might have been aro=
und for quite some time; I hadn&#39;t updated this specific computer in ~6 =
months). Here&#39;s what I did to resolve it, allowing &quot;apt&quot; to w=
ork again for me. I&#39;m pretty sure the issue is with the UHD PPA info. I=
 will push this info to Ettus R&amp;D and hopefully they can shed some=C2=
=A0light on this issue -- and hopefully fix it! - MLD<div><br></div><div>1)=
 Either via some commandline / file editing or in the &quot;Software &amp; =
Updates&quot; app (&quot;Other Software&quot; tab):</div><div><br></div><di=
v>disable all entries for &quot;<a href=3D"http://ppa.launchpad.net/ettusre=
search">ppa.launchpad.net/ettusresearch</a>&quot;. save files / Close the a=
pp &amp; it should update the local cache of software.</div><div><br></div>=
<div>2) run &quot;sudo apt update&quot; just in case.</div><div><br></div><=
div>3) run &quot;sudo=C2=A0apt --fix-broken install&quot; and the apt-insta=
lled UHD packages should be removed.</div><div><br></div><div>Yes, I know t=
hat UHD PPA is now disabled, and hence installing UHD will be less simple. =
That said, at least &quot;apt&quot; is working=C2=A0again!</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May=
 26, 2022 at 8:37 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-05-26 02:56, rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello=C2=A0Marcus,
        <div><br>
        </div>
        <div>I had installed it a couple of months ago, it was a general
          upgrade through the terminal (using &quot;sudo apt upgrade&quot;)=
, also
          i checked my ubuntu version and yes it is bionic.</div>
        <div><br>
        </div>
        <div>thank you for your support</div>
        <div><br>
        </div>
        <div>Kind Regards</div>
        <div>Rouba</div>
      </div>
    </blockquote>
    What I would try to do is to completely uninstall UHD first, then
    try to do a 4.2 install from the PPA.=C2=A0=C2=A0=C2=A0 But, to be hone=
st, I&#39;m a
    bit surprised that sometime<br>
    =C2=A0 as modern as UHD 4.2 will even build for Ubuntu 18.04.=C2=A0 The
    current LTS release of Ubuntu is 22.04, and I&#39;ve been running 21.10
    for over a year.<br>
    <br>
    sudo apt remove uhd uhd-host<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 25, 2022 at 7:23
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-05-25 04:27, rouba zeitoun wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello USRP Support
                <div><br>
                </div>
                <div>Hope you have a nice day.</div>
                <div><br>
                </div>
                <div>I was trying to upgrade my system and i got this
                  message=C2=A0=C2=A0</div>
                <div><br>
                </div>
                <div><b>You might want to run &#39;apt --fix-broken install=
&#39;
                    to correct these.<br>
                    The following packages have unmet dependencies:<br>
                    =C2=A0libuhd-dev : Depends: libuhd4.2.0 (=3D
                    4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
                    =C2=A0uhd-host : Depends: libuhd4.2.0 (=3D
                    4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>
                    E: Unmet dependencies. Try &#39;apt --fix-broken
                    install&#39; with no packages (or specify a solution).<=
/b><br>
                </div>
                <div><br>
                </div>
                <div>after i tried=C2=A0<b>&#39; sudo apt --fix-broken inst=
all&#39; </b>i
                  got this=C2=A0error</div>
                <div><br>
                </div>
                <div><b>dpkg: error processing archive
                    /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bi=
onic1_amd64.deb
                    (--unpack):<br>
                    =C2=A0trying to overwrite
                    &#39;/usr/share/uhd/cal/cal_metadata.fbs&#39;, which is=
 also
                    in package libuhd4.1.0:amd64
                    4.1.0.4-0ubuntu1~bionic1<br>
                    Errors were encountered while processing:<br>
=C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.de=
b<br>
                    E: Sub-process /usr/bin/dpkg returned an error code
                    (1)</b><br>
                </div>
                <div><b><br>
                  </b></div>
                <div>How may I solve this=C2=A0problem?</div>
                <div><br>
                </div>
                <div>Kind Regards</div>
                <div>Rouba</div>
              </div>
              <br>
            </blockquote>
            How did you install UHD initially?=C2=A0 What did you do to try
            to upgrade?=C2=A0=C2=A0 I&#39;ll note that &quot;Bionic&quot; i=
s a version of Ubuntu
            that is quite out-of-date at this point, but there do<br>
            =C2=A0 appear=C2=A0 to be PPA for UHD 4.2 for bionic.<br>
            <br>
            <br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ae63205dffec48a--

--===============6791148096810757318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6791148096810757318==--
