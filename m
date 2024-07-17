Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE61E93401A
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 18:00:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97035385882
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 12:00:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721232005; bh=KTfrdzubuUXgJiKTTZDK9JJckA93OFrqwgjjEv+NBqI=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=jFJlavu+4Nw9cq4slJysZ1ML6FDLszbC8WQTd8IiKkSI6DkgyAZ3zs7hpa1sgDL1P
	 qoNEJCneWCHyVP3tLsI6Xf42KFi1zvtca7uSYV1iTfIjiEPgTrf0JW6hv/EeNn8c3z
	 t1dWasN5/jhS7UJ1XmZlNIyFYiyZFgz0pJHX7x/F6hwEglu9C9LpOupE4ez1nlAhc+
	 u9ib2YNB7PjFiu+IhlgF0eRO8tPYwSYaLpXj1E/Qj/a3819ISGz/kytI6kiMa5fbb4
	 48V5J8Cx0riHtRsdg1txCRDXDjg3A8Oy7f5tu5OuOEyv1X0Ke5xias3KY9Vr7jb/Ur
	 3Yu7/Ya6DArQw==
Received: from resqmta-a2p-658919.sys.comcast.net (resqmta-a2p-658919.sys.comcast.net [96.103.146.56])
	by mm2.emwd.com (Postfix) with ESMTPS id 096EA384626
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 11:59:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="OGyMwOQb";
	dkim-atps=neutral
Received: from resomta-a2p-630472.sys.comcast.net ([96.103.145.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-a2p-658919.sys.comcast.net with ESMTPS
	id U4nfsnoLW6OuvU73ZsaJGH; Wed, 17 Jul 2024 15:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1721231945;
	bh=cywNqREQOcspeX2VJQZVxccVT2UeRHJJ9HBYpvrCeD4=;
	h=Received:Received:Content-Type:Message-ID:Date:MIME-Version:
	 Subject:To:From:Xfinity-Spam-Result;
	b=OGyMwOQbbknpOhKme6PztBAzfjv8qtdeAB9IEiknsKCCiEx5VG1j1xADhckCJkw4X
	 nz9FYxEbP3D7pmzNG7cab96gH+askIa6qQSwZtMubR4HTc8DlhA34MSyeCO3Z+9ia1
	 xsGO5ZVdkUSo/hz/CK4PSbn5Nr6dNEt4G2rbnsw27Cfes3n2K56wa2vPqA4ePTCfAA
	 uWL4xAPkcRPS2+D8ApiUmVNRrJ+hCb4bIMWoq+ngTcxZ62U7702ZJDm8QSF61Iyual
	 CmZgFRpTrG1nrm4V7dOYE94lc5SIKzUVVmxQTWqVdh/fxLQGifHJnnbs0GVdq7fI4p
	 Jjc8h6lGdI5XA==
Received: from [IPV6:2601:647:4b00:aafb:c18f:ca52:4ed:c8fa]
 ([IPv6:2601:647:4b00:aafb:c18f:ca52:4ed:c8fa])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-a2p-630472.sys.comcast.net with ESMTPSA
	id U739saox3Olc4U73AsE8Wp; Wed, 17 Jul 2024 15:58:41 +0000
Message-ID: <0ede54dc-d616-431f-a2d1-b5426de86391@comcast.net>
Date: Wed, 17 Jul 2024 08:58:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Brais_Ares_Fern=C3=A1ndez?= <bares@gradiant.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <GV1P193MB229549AF4487D944E9A71C7DCBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
 <cf0ee27c-5059-41f8-9ac5-7cea7db9fcdc@comcast.net>
 <GV1P193MB22953B182EDF6D1EF9CDB869CBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
 <40fea92b-9616-4dba-a70f-8a10906317fd@comcast.net>
 <GV1P193MB2295547014C427E41693C3D3CBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
Content-Language: en-US
In-Reply-To: <GV1P193MB2295547014C427E41693C3D3CBA32@GV1P193MB2295.EURP193.PROD.OUTLOOK.COM>
X-CMAE-Envelope: MS4xfMSZLf9BFZD66XF+TeFX0TBxAwdkAFQG622tkF/WwvmgRrljzoM8VAS13S4T4d79a5LcyiaKjFQ61CDOprWhhL9h6lAAsvGxlg7oNPTdYJQk5YqFHok8
 fGfAy0uXymLZFNwFbjFJS9fDK1x9oVMufmoudvdplgWxTZzAp1RDei57hmXuULDGwy+EATgv8hHyKF060z7K2dfZn9+tIxdlHWbdcLtWERX9KjN9G6540Tx8
 4IsjrNlfel14HkwgfRs1LbkTlqyVuicylJJ4S6tuHHfAEcun1okfKQSspuCn6KJsLqngGBmTTIfyNb3UBzgFhwiZSr0h0bjCUDUrLV/TcQc=
Message-ID-Hash: FKASGVP6ZOSZHTH7AORQPC3DE3UCVS6O
X-Message-ID-Hash: FKASGVP6ZOSZHTH7AORQPC3DE3UCVS6O
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replicas out of band in OFDM signal (N210+CBX)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FKASGVP6ZOSZHTH7AORQPC3DE3UCVS6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============8054483991723107516=="

This is a multi-part message in MIME format.
--===============8054483991723107516==
Content-Type: multipart/alternative;
 boundary="------------3sXzrBAffeFunEw48T2ywBy9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3sXzrBAffeFunEw48T2ywBy9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

The trick would be to oversample. I'm not sure how you would do that=20
with just UHD, but with GNU Radio, you would just use a rational=20
resampler block. That is, setting the sample rate to 20 Msps and using a=20
2X resample ratio.


Ron


On 7/17/24 08:38, Brais Ares Fern=C3=A1ndez wrote:
> I've just tested exactly the same setup but using a *B210*, and it=20
> does *not *happen.
>
> So it definitely seems to be what Ron pointed out.
>
> @Marcus: yes, the signal used is sampled at 10e6 and I can see its=20
> spectrum in Matlab and it's a clean OFDM. Actually we tried one OFDM=20
> signal modulated by us, and other completely different one by 5GMAG=20
> <https://github.com/5G-MAG/rt-mbms-modem>=C2=A0and that effect always a=
ppear.
>
> Then... Using N210, is there no way that I can filter out that=20
> aliasing stuff?
>
>
> -----------------------------------------------------------------------=
-
> *De:* Ron Economos <w6rz@comcast.net>
> *Enviado:* mi=C3=A9rcoles, 17 de julio de 2024 16:05
> *Para:* Brais Ares Fern=C3=A1ndez <bares@gradiant.org>;=20
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Asunto:* Re: [USRP-users] Re: Replicas out of band in OFDM signal=20
> (N210+CBX)
>
> Yeah, I think UHD sets it to some calculated value that can't be=20
> overwritten.
>
>
> BTW, here's what the spectrum looks like with a very wide analog=20
> filter. So the default bandwidth setting on the N210/CBX is just a=20
> little too wide to fully suppress that first alias.
>
>
> Ron
>
>
> On 7/17/24 06:39, Brais Ares Fern=C3=A1ndez wrote:
>> Hello, Ron. Thank you for the answer.
>>
>> I've already tried but it seems to do nothing:
>>
>> $ sudo /lib/uhd/examples/tx_samples_from_file --freq 1500e6 --rate=20
>> 10e6 --gain 20 *--bw 10e6*=C2=A0--type float --file ~/OFDMsignal.raw=20
>> --args=3D"name=3Dsdr1"
>>
>> I even tried weird values like 100e3 or 100e6, but no apparent effect=20
>> over the spectrum at all.
>> ----------------------------------------------------------------------=
--
>> *De:* Ron Economos via USRP-users <usrp-users@lists.ettus.com>=20
>> <mailto:usrp-users@lists.ettus.com>
>> *Enviado:* mi=C3=A9rcoles, 17 de julio de 2024 15:00
>> *Para:* usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com>=20
>> <mailto:usrp-users@lists.ettus.com>
>> *Asunto:* [USRP-users] Re: Replicas out of band in OFDM signal=20
>> (N210+CBX)
>>
>> Those are aliases. Try setting the analog bandwidth with the --bw=20
>> parameter.
>>
>>
>> Ron
>>
>>
>> On 7/17/24 03:58, Brais Ares Fern=C3=A1ndez wrote:
>>> Hello,
>>>
>>> This might be a common effect=C2=A0but I don't comprehend why it happ=
ens=20
>>> and if it is avoidable.
>>>
>>> I'm using a N210+CBX to transmit a 10 MSPS *OFDM signal*, with Fc =3D=
=20
>>> 1.5 GHz. When transmitting, I can see some kind of "replicas" at=20
>>> +-7.5 MHz from Fc, always with a 40 dBc difference.
>>>
>>> $ sudo /lib/uhd/examples/tx_samples_from_file --freq 1500e6 --rate=20
>>> 10e6 --gain 20 --type float --file ~/OFDMsignal.raw --args=3D"name=3D=
sdr1"
>>>
>>>
>>> I've already tried changing lo_offset and executing the calibration=20
>>> utilities for IQ imbalance, but none of that seems related to the=20
>>> problem.
>>>
>>> Could anyone provide any insight?
>>>
>>> Regards.
>>>
--------------3sXzrBAffeFunEw48T2ywBy9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>The trick would be to oversample. I'm not sure how you would do
      that with just UHD, but with GNU Radio, you would just use a
      rational resampler block. That is, setting the sample rate to 20
      Msps and using a 2X resample ratio.</p>
    <p><br>
    </p>
    <p> Ron</p>
    <p><br>
    </p>
    <p></p>
    <div class=3D"moz-cite-prefix">On 7/17/24 08:38, Brais Ares Fern=C3=A1=
ndez
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:GV1P193MB2295547014C427E41693C3D3CBA32@GV1P193MB2295.EURP193.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I've just tested exactly the same setup but using a <b>B210</b>,
        and it does <b>not
        </b>happen.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        So it definitely seems to be what Ron pointed out.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        @Marcus: yes, the signal used is sampled at 10e6 and I can see
        its spectrum in Matlab and it's a clean OFDM. Actually we tried
        one OFDM signal modulated by us, and other completely different
        one by
        <a href=3D"https://github.com/5G-MAG/rt-mbms-modem" id=3D"LPlnk"
          title=3D"https://github.com/5G-MAG/rt-mbms-modem"
          moz-do-not-send=3D"true">
          5GMAG</a>=C2=A0and that effect always appear.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Then... Using N210, is there no way that I can filter out that
        aliasing stuff?</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>De:</b> Ron
          Economos <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:w6rz=
@comcast.net">&lt;w6rz@comcast.net&gt;</a><br>
          <b>Enviado:</b> mi=C3=A9rcoles, 17 de julio de 2024 16:05<br>
          <b>Para:</b> Brais Ares Fern=C3=A1ndez <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:bares@gradiant.org">&lt;bares@gradiant.org&gt;<=
/a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Asunto:</b> Re: [USRP-users] Re: Replicas out of band in
          OFDM signal (N210+CBX)</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <p>Yeah, I think UHD sets it to some calculated value that can't
          be overwritten.</p>
        <p><br>
        </p>
        <p>BTW, here's what the spectrum looks like with a very wide
          analog filter. So the default bandwidth setting on the
          N210/CBX is just a little too wide to fully suppress that
          first alias.<br>
        </p>
        <p><br>
        </p>
        <p>Ron<br>
        </p>
        <div class=3D"x_moz-cite-prefix"><br>
        </div>
        <div class=3D"x_moz-cite-prefix">On 7/17/24 06:39, Brais Ares
          Fern=C3=A1ndez wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            Hello, Ron. Thank you for the answer.</div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            I've already tried but it seems to do nothing:</div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            $ sudo /lib/uhd/examples/tx_samples_from_file --freq 1500e6
            --rate 10e6 --gain 20
            <b>--bw 10e6</b>=C2=A0--type float --file ~/OFDMsignal.raw
            --args=3D"name=3Dsdr1"</div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
            I even tried weird values like 100e3 or 100e6, but no
            apparent effect over the spectrum at all.</div>
          <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
          <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
              style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
              color=3D"#000000"><b>De:</b> Ron Economos via USRP-users
              <a class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">&lt;usrp-users@lists.ettus.com&g=
t;</a><br>
              <b>Enviado:</b> mi=C3=A9rcoles, 17 de julio de 2024 15:00<b=
r>
              <b>Para:</b> <a
                class=3D"x_moz-txt-link-abbreviated moz-txt-link-freetext=
"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                usrp-users@lists.ettus.com</a> <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                &lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Asunto:</b> [USRP-users] Re: Replicas out of band in
              OFDM signal (N210+CBX)</font>
            <div>=C2=A0</div>
          </div>
          <div>
            <p>Those are aliases. Try setting the analog bandwidth with
              the --bw parameter.<br>
            </p>
            <p><br>
            </p>
            <p>Ron<br>
            </p>
            <p><br>
            </p>
            <div class=3D"x_x_moz-cite-prefix">On 7/17/24 03:58, Brais
              Ares Fern=C3=A1ndez wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                Hello,</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                This might be a common effect=C2=A0but I don't comprehend=
 why
                it happens and if it is avoidable.</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                I'm using a N210+CBX to transmit a 10 MSPS <b>OFDM
                  signal</b>, with Fc =3D 1.5 GHz. When transmitting, I
                can see some kind of "replicas" at +-7.5 MHz from Fc,
                always with a 40 dBc difference.</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                $ sudo /lib/uhd/examples/tx_samples_from_file --freq
                1500e6 --rate 10e6 --gain 20 --type float --file
                ~/OFDMsignal.raw --args=3D"name=3Dsdr1"</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                I've already tried changing lo_offset and executing the
                calibration utilities for IQ imbalance, but none of that
                seems related to the problem.</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                Could anyone provide any insight?</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                Regards.</div>
              <div class=3D"x_x_elementToProof"
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                <span style=3D"white-space:pre-wrap"></span></div>
              <fieldset class=3D"x_x_moz-mime-attachment-header"></fields=
et>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------3sXzrBAffeFunEw48T2ywBy9--

--===============8054483991723107516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8054483991723107516==--
