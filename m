Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AA7447312
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 14:33:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9073B3842F8
	for <lists+usrp-users@lfdr.de>; Sun,  7 Nov 2021 08:33:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PDoYtPu4";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id CA77D383BC7
	for <usrp-users@lists.ettus.com>; Sun,  7 Nov 2021 08:32:22 -0500 (EST)
Received: by mail-qt1-f178.google.com with SMTP id d21so11473704qtw.11
        for <usrp-users@lists.ettus.com>; Sun, 07 Nov 2021 05:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=0Kc1XGPw+e7yyfV5B1rfyyR96Mrz6qj6LZqDj87qLXc=;
        b=PDoYtPu4QESzbzcgP6j/+fffAUUST7H2tkHhO6XTEmebM4nEmk51LS5f5w0IUxGK2O
         BN3NSXI5Tgq5H04H/I+5uOcLMh0f2u2CcAVCTvGpG5x/QdPxDEuQAJaptkvkKdGjlUWa
         cN6tWjuTsbS2FvhmNrj2gDiB5X2LQBI23whZ42hN/piyC2j4H+8BK+1qxOVzspeXyq3M
         DitO5AK4qC8uhRM5I7wy7a5vrDpOrNSFc9fZ41oJHAdJmQfpA+QsD6E2PPpsbGUSYfzL
         Wd0oGKyYzeNRTyzUyr7XEWhz0JQcZOLIo64rS8WqZU7SmEPnd9H2pmuGAcec22GmWRDz
         C4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=0Kc1XGPw+e7yyfV5B1rfyyR96Mrz6qj6LZqDj87qLXc=;
        b=arGKI+Z0w5La+FWdnB5XWvzIczBK0LMvfnK9wI/QAPFQ+1aLylSvRssGCAq0WUdnS4
         avv7lLgsBmjAY8eD1ntp06ZfoRJjbD7NAoubUwFTlyn34837CN62tLa+LeBDJoOfVjS+
         GGuqQdHS7fqzbpdVpcQ1m38/Dn+sL5kaYTdQkDNeGw0jDs8SJP6WB6vs5qDK+xHvw9H0
         JUanRoBJTb84j941CFx7rvl00ZBRXH0OeL/rCdfo6hi/dnGGlyuVXvrWHtP+sT/AirOH
         lr7Wjw5hFD5TVGg6fvngeZM7FDXInBJRzgY9aymIF1iYzKzT2OaAuxjBcAy6OU49hR7z
         ef2g==
X-Gm-Message-State: AOAM532BzqWCp9b+bQcD5r9QLO3R9SfZdoNzs8gQOrdBzk4BEhIokH0y
	dnPZRqy8axZnwIxwk9FeLNU8U0P3RF8=
X-Google-Smtp-Source: ABdhPJzwWcvR/5T4Yg9AegvClIP2wD3hBK3Xh/us2AOW1T4UMJ996Lub4FHebJe/o5diFnlt8gzBxw==
X-Received: by 2002:a05:622a:550:: with SMTP id m16mr73463497qtx.125.1636291942067;
        Sun, 07 Nov 2021 05:32:22 -0800 (PST)
Received: from [192.168.2.233] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id l9sm8529691qkp.128.2021.11.07.05.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Nov 2021 05:32:21 -0800 (PST)
Message-ID: <ec012507-3542-fae4-0574-811144dc9353@gmail.com>
Date: Sun, 7 Nov 2021 08:32:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>, usrp-users@lists.ettus.com
References: <CA+QP_P=XaKdpHFRSi4=iz9cnCJWyHeoNdZa1=hBP8DdNoevnUA@mail.gmail.com>
 <D6D63767-1C78-4D89-9C3D-B7F26CBFF546@gmail.com>
 <CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmail.com>
Message-ID-Hash: ZKKXH237DK6TXHAVWKQ4HP6FKTDODPGQ
X-Message-ID-Hash: ZKKXH237DK6TXHAVWKQ4HP6FKTDODPGQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding B210 and B205mini-i
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKKXH237DK6TXHAVWKQ4HP6FKTDODPGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6766382896696645501=="

This is a multi-part message in MIME format.
--===============6766382896696645501==
Content-Type: multipart/alternative;
 boundary="------------9xn01rCq4QNcs5y3TDZlwCRC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9xn01rCq4QNcs5y3TDZlwCRC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-07 05:29, Arhum Ahmad wrote:
> Dear sir,
>
> I am using B210 and B205mini-i. I have a few doubts. I hope you can=20
> help me. Doubts are listed below:
>
> 1) In matlab simulink there is an option of master clock rate, but no=20
> description can you please elaborate=C2=A0on that. Also it has some lim=
it=20
> i.e., 56e6 Hz what happens if I use more than this limit.
>
There's no way to select greater than 56MHz.=C2=A0 The RF front-end chip=20
cannot be driven faster than that.

> 2) Is there any relation to select=C2=A0center frequency, master clock=20
> rate, interpolation/decimation factor and gain.
The master clock rate determines that sample-rates that can be delivered=20
to the host PC, but is in no way related to tuning frequency or gain.=C2=A0=
=C2=A0=C2=A0=20
The sample-rate deliver to the
 =C2=A0 host must have an integer relationship to the master clock rate. =
By=20
default UHD will select a master clock rate that is "reasonable" for=20
your desired sample rate.

>
> 3) Can you give the range of suitable=C2=A0gain.
The gain section of the knowledge-base article will be of some help (as=20
will the rest of that article).

https://kb.ettus.com/B200/B210/B200mini/B205mini#Gains


>
> 4) There is an example in matlab for frequency calibration while using=20
> that when I plot the spectrum it's the same with or without antenna=20
> which suggest it is not working correctly. Can you suggest where the=20
> problem might be?
Since this isn't a MatLab support list, no I cannot.=C2=A0 I can *guess* =
that=20
this is a case where you have the gain turned down too low.

>
> 5) I am trying to send a simple QPSK signal and receive(example from=20
> matlab simulink). All blocks work fine in simulation but when I use=20
> USRP for Tx/Rx BER is always 0.5 and I think usrp is not detecting any=20
> signal. Is there any parameter mismatch?
Possibly gain settings, and I MUST emphasize that if you're cabling-up=20
two USRPs for RX/TX or you're looping-back on a single USRP, you MUST=20
ABSOLUTELY use a 30dB
 =C2=A0 attenuator in-line, and use the minimum TX gain that allows=20
success.=C2=A0=C2=A0=C2=A0 But, again, this isn't a MatLab support group,=
 so I"m just=20
guessing as to what might be wrong.


>
> On Sat, Nov 6, 2021 at 5:44 PM Marcus D Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     Yes. Just go ahead and ask your question.
>
>     Sent from my iPhone
>
>>     On Nov 6, 2021, at 6:32 AM, Arhum Ahmad via USRP-users
>>     <usrp-users@lists.ettus.com> wrote:
>>
>>     =EF=BB=BF
>>     Respected sir,
>>     Is this the right email=C2=A0to to ask doubts?
>>
>>     --=20
>>     *Thanks and Regards**
>>     *
>>     *Arhum Ahmad*
>>     Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>>
>>     +91- <tel:+91-7015802356>7974897279
>>     |=C2=A0arhum.19eez0005@iitrpr.ac.in <mailto:2016eez0009@iitrpr.ac.=
in>
>>
>>     Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>>
>>     *
>>     /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message a=
nd
>>     any attachments are intended solely for the addressee(s) and may
>>     contain confidential and/or privileged information and may be
>>     legally protected from disclosure. If you are not the intended
>>     recipient of this message or their agent, or if this message has
>>     been addressed to you in error, please immediately alert the
>>     sender by reply email and then delete this message and any
>>     attachments. If you are not the intended recipient, you are
>>     hereby notified that any use, dissemination, copying, or storage
>>     of this message or its attachments is strictly prohibited./
>>     *_______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> --=20
> *Thanks and Regards**
> *
> *Arhum Ahmad*
> Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>
> +91- <tel:+91-7015802356>7974897279 |=C2=A0arhum.19eez0005@iitrpr.ac.in=
=20
> <mailto:2016eez0009@iitrpr.ac.in>
>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
>
> *
> /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message and an=
y=20
> attachments are intended solely for the addressee(s) and may contain=20
> confidential and/or privileged information and may be legally=20
> protected from disclosure. If you are not the intended recipient of=20
> this message or their agent, or if this message has been addressed to=20
> you in error, please immediately alert the sender by reply email and=20
> then delete this message and any attachments. If you are not the=20
> intended recipient, you are hereby notified that any use,=20
> dissemination, copying, or storage of this message or its attachments=20
> is strictly prohibited./
> *=20

--------------9xn01rCq4QNcs5y3TDZlwCRC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-07 05:29, Arhum Ahmad wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Dear sir,
        <div><br>
        </div>
        <div>I am using B210 and B205mini-i. I have a few doubts. I hope
          you can help me. Doubts are listed below:</div>
        <div><br>
        </div>
        <div>1) In matlab simulink there is an option of master clock
          rate, but no description can you please elaborate=C2=A0on that.
          Also it has some limit i.e., 56e6 Hz what happens if I use
          more than this limit.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    There's no way to select greater than 56MHz.=C2=A0 The RF front-end c=
hip
    cannot be driven faster than that. <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>2) Is there any relation to select=C2=A0center frequency, ma=
ster
          clock rate, interpolation/decimation factor and gain.</div>
      </div>
    </blockquote>
    The master clock rate determines that sample-rates that can be
    delivered to the host PC, but is in no way related to tuning
    frequency or gain.=C2=A0=C2=A0=C2=A0 The sample-rate deliver to the<b=
r>
    =C2=A0 host must have an integer relationship to the master clock rat=
e.=C2=A0
    By default UHD will select a master clock rate that is "reasonable"
    for your desired sample rate.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>3) Can you give the range of suitable=C2=A0gain.</div>
      </div>
    </blockquote>
    The gain section of the knowledge-base article will be of some help
    (as will the rest of that article).<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/B200/=
B210/B200mini/B205mini#Gains">https://kb.ettus.com/B200/B210/B200mini/B20=
5mini#Gains</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>4) There is an example in matlab for frequency calibration
          while using that when I plot the spectrum it's the same with
          or without antenna which suggest it is not working correctly.
          Can you suggest where the problem might be?</div>
      </div>
    </blockquote>
    Since this isn't a MatLab support list, no I cannot.=C2=A0 I can *gue=
ss*
    that this is a case where you have the gain turned down too low.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>5) I am trying to send a simple QPSK signal and
          receive(example from matlab simulink). All blocks work fine in
          simulation but when I use USRP for Tx/Rx BER is always 0.5 and
          I think usrp is not detecting any signal. Is there any
          parameter mismatch?</div>
      </div>
    </blockquote>
    Possibly gain settings, and I MUST emphasize that if you're
    cabling-up two USRPs for RX/TX or you're looping-back on a single
    USRP, you MUST ABSOLUTELY use a 30dB<br>
    =C2=A0 attenuator in-line, and use the minimum TX gain that allows
    success.=C2=A0=C2=A0=C2=A0 But, again, this isn't a MatLab support gr=
oup, so I"m
    just guessing as to what might be wrong.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_Pn3CoPsrfQXM_d3w7wcR0_OabOWd7uoJw_74xpKFtwCSg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 6, 2021 at 5:44=
 PM
          Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Yes. Just go ahead and ask your question.=C2=A0=
<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Nov 6, 2021, at 6:32 AM, Arhum
                Ahmad via USRP-users &lt;<a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">Respected sir,
                  <div>Is this the right email=C2=A0to to ask doubts?<br
                      clear=3D"all">
                    <div><br>
                    </div>
                    -- <br>
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div>
                          <div dir=3D"ltr">
                            <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span
                                  style=3D"font-family:&quot;times new
                                  roman&quot;,serif">Thanks and Regards</=
span></b><b><br>
                              </b></div>
                            <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                                Ahmad</b><br>
                              Ph.D. Scholar,=C2=A0Electrical Engineering
                              Department, IIT Ropar</div>
                            <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                              width=3D"470" cellspacing=3D"0"
                              cellpadding=3D"0" border=3D"0">
                              <tbody>
                                <tr>
                                  <td style=3D"color:rgb(141,141,141)">
                                    <p style=3D"margin:0px"><span
                                        style=3D"display:inline-block"><a
                                          href=3D"tel:+91-7015802356"
                                          style=3D"color:rgb(141,141,141)=
;font-family:sans-serif"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true">+91-</=
a>7974897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                                        style=3D"display:inline-block"><a
href=3D"mailto:2016eez0009@iitrpr.ac.in"
                                          style=3D"color:rgb(141,141,141)=
;font-family:sans-serif"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true">@iitrp=
r.ac.in</a></span></p>
                                  </td>
                                </tr>
                                <tr>
                                  <td
                                    style=3D"font-family:sans-serif;color=
:rgb(141,141,141)"><span
                                      style=3D"display:inline-block">Lab
                                      No. 323, Communication Research
                                      Lab, J.C.Bose Building</span></td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <br>
                <b><font size=3D"1"><span><span><span>
                          <div>
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div>
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </span></span></span></font></b><span>___________=
____________________________________</span><br>
                <span>USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a></span><br>
                <span>To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a></span><br>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span
                    style=3D"font-family:&quot;times new
                    roman&quot;,serif">Thanks and Regards</span></b><b><b=
r>
                </b></div>
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, II=
T
                Ropar</div>
              <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                width=3D"470" cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span
                          style=3D"display:inline-block"><a
                            href=3D"tel:+91-7015802356"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">+9=
1-</a>7974897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                          style=3D"display:inline-block"><a
                            href=3D"mailto:2016eez0009@iitrpr.ac.in"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">@i=
itrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td
                      style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span
                        style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</sp=
an></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </body>
</html>
--------------9xn01rCq4QNcs5y3TDZlwCRC--

--===============6766382896696645501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6766382896696645501==--
