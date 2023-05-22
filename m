Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63B70B248
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 02:01:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59DA73844FA
	for <lists+usrp-users@lfdr.de>; Sun, 21 May 2023 20:01:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684713688; bh=OvGVPjRdSOpTI0QTkyCQ80ecxgMggprnumSGbtAGgbI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BR5/VmEvA/pYpr2CVzNUtB1qtl8BLULEmbTdqvyIDiwnlZtqG4w6kLebC32UwJifZ
	 zAsJKeKwTtnzs7kxhBjslV2hbUFFekWVCU6WHDYi27l+poRgxB7MDD8xXXle408rbB
	 Utp+M6sDuiBk4bd2BlAVPw6rsCSh5rdDEsb09ZEVXvuB2tUjTsw3WFprBWVCPhWCIN
	 ku9TwQ+SAuTFr1Py7TgAPDFlp0wpoBboVfOwZdYureOOo4obrF2Mcrzh2Jxnw0i99k
	 VofoZU2kvKc3upAMD82Kikx6EjAlHemsA/AOy4JpjiE5ZXAVlPJcY9dNf1bbo2h1W0
	 gcvdSSFy6iDJg==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id A61C8383CAA
	for <usrp-users@lists.ettus.com>; Sun, 21 May 2023 20:00:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pZ0jJDzm";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-75788255892so259426185a.0
        for <usrp-users@lists.ettus.com>; Sun, 21 May 2023 17:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684713631; x=1687305631;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmXekZKzbztb7seO0hjg8lMLY3MVg+2OIijl0EmNPA8=;
        b=pZ0jJDzmNhU+h6UsXB28SEvuUrgZOqh2o6bcexXYlzyYrRduzibw4KgK3pgg3zKQ77
         gy5h3+g4/DO7ArcgP0msZYbIbP7hOsM0+33JQt9tS0Thvsna4RgQUm0nr17MR2ogCtcT
         qqtnODTaELGez1jmKAm+tQ424ntNPvRBdO8txwmes7hf0claOfxZLjLWmmndzFbDgopZ
         Hm40YlI1bpz/3IUo5Vx64VqRldSySh5SVFe0Ne/KgWmJFR1IB64RfWdPlzvrtfmUrp5F
         4WJ+T+x5YfCfLLWqqRc3p7Bd8QkL7Ue25XepDxjbPZeLopfkMqRd7G1pDfLLbWiC8EIx
         vIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684713631; x=1687305631;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dmXekZKzbztb7seO0hjg8lMLY3MVg+2OIijl0EmNPA8=;
        b=iL5LuFKppdQYs1BeWnIBq82JThcRWYmns+v+LzY4WjruFWX29iyFhXPTA3eUnhf4wc
         +chvUyCte5WM20KVep62uZW5tUoDvs22y1s14FNTeCEx110DPl9CJ1S5KBiqy5r4DPhD
         ZAvu3nOpmyU4eX+kp92+ujTmAatOMwo0eSliEygc8b8HSYiYm9mkDzfxh8H3d4mvQr1Q
         NsRMs5ZIylZCi+5FmVvLALEzqW8abW/5cjMvCWI8LqwGIUq3m7NiIRieSRTYUP1OoF9t
         wJ+081pjIG5jBsM61nGUJn7U/mRmYQNwFlW6aUzSKxTs/dEIc1IOyt0BCF64yWVLpFxo
         8efg==
X-Gm-Message-State: AC+VfDxUWyEmj/G2bNO56bC//WJ1S2CQwmsLOvrgcbAUjsVk2v3r2q0L
	ww8fYwDPG7SjOvSaaGgQinvgyk4mohv+Wg==
X-Google-Smtp-Source: ACHHUZ727DQX0ZtBUDuyEEd5NercLRH3OPlwz2409KWUBdxuJwlnvNr+TsleYB26uBnMXfiHspq5iQ==
X-Received: by 2002:ac8:7dcd:0:b0:3f6:ac1b:47a3 with SMTP id c13-20020ac87dcd000000b003f6ac1b47a3mr4212267qte.26.1684713631010;
        Sun, 21 May 2023 17:00:31 -0700 (PDT)
Received: from [192.168.2.151] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id a14-20020ac844ae000000b003f6aa9d7883sm760034qto.13.2023.05.21.17.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 17:00:30 -0700 (PDT)
Message-ID: <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com>
Date: Sun, 21 May 2023 20:00:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
 <936520968.215976.1684620209911@mail.yahoo.com>
 <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
 <17799965.336600.1684709874320@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <17799965.336600.1684709874320@mail.yahoo.com>
Message-ID-Hash: H57VGBD4ZR5VEDSAU75YYHA52NXUN6SV
X-Message-ID-Hash: H57VGBD4ZR5VEDSAU75YYHA52NXUN6SV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H57VGBD4ZR5VEDSAU75YYHA52NXUN6SV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3915183889245339296=="

This is a multi-part message in MIME format.
--===============3915183889245339296==
Content-Type: multipart/alternative;
 boundary="------------2bQ0sfq7fNtuSr9zHRkxK8YA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2bQ0sfq7fNtuSr9zHRkxK8YA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/05/2023 18:57, zhou wrote:
> Thanks Marcus. Yes, I have observed that people are using USRPs for=20
> different applications. My application is for gNB simulation for 5G.=20
> Slot is a term for signal structure in time domain in physical layer=20
> in 5G. Generally, its length is 1ms.
>
> Your guess is correct. I am doing timed capture for an exact number of=20
> samples. The transmitter transmits signal endlessly, and the capture=20
> is on demand.
> Now I have to capture 1ms more than what my analysis requires. The 1ms=20
> extra signals are discarded in analysis but they did protect the=20
> signals I need.
> It seems that the receiver shut down too early.
>
>
Could you share with us exactly how you're setting up the capture? What=20
stream arguments are you using, etc?


>
> On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 20/05/2023 18:03, zhou via USRP-users wrote:
> Hi,
>
> I installed UHD 4.4 recently. I use USRP for both transmission and=20
> receive. I find that EVM in the tail part of the captured signal is=20
> higher, e.g., in a 20-slot capture, in the first 19 slots, EVM~=3D 1.2%=
,=20
> but in slot#20, evm ~=3D2.9%.
>
> UHD 3.10 was fine. I have found this problem in UHD 4.0 and UHD 4.1.=20
> Now it still exists in UHD 4.4. My solution is to capture 1ms more=20
> than what I need.
>
> Is this a bug in FPGA?
>
> Thanks,
> Hongwei
>
> Without telling us what you mean by a "slot", and exactly how you're=20
> capturing, it's impossible to say.=C2=A0=C2=A0 Remember, applications
> =C2=A0 of USRPs are *incredibly diverse*, so if you're using nomenclatu=
re=20
> that is specific to your particular work, others may not
> =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 Please be more s=
pecific.
>
> My guess is that you're doing a timed capture for an exact number of=20
> samples, and that timing has become a bit more
> =C2=A0 "tight" in more recent releases, so you're capturing samples as =
the=20
> receiver is shutting down, or the transmitter is
> =C2=A0 shutting down.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------2bQ0sfq7fNtuSr9zHRkxK8YA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/05/2023 18:57, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:17799965.336600.1684709874320@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpe6c642e6yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus. Yes, I have
          observed that people are using USRPs for different
          applications. My application is for gNB simulation for 5G.
          Slot is a term for signal structure in time domain in physical
          layer in 5G. Generally, its length is 1ms.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Your guess is correct. I a=
m
          doing timed capture for an exact number of samples. The
          transmitter transmits signal endlessly, and the capture is on
          demand.</div>
        <div dir=3D"ltr" data-setdir=3D"false">Now I have to capture 1ms
          more than what my analysis requires. The 1ms extra signals are
          discarded in analysis but they did protect the signals I need.<=
/div>
        <div dir=3D"ltr" data-setdir=3D"false">It seems that the receiver
          shut down too early.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    Could you share with us exactly how you're setting up the capture?=C2=
=A0
    What stream arguments are you using, etc?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:17799965.336600.1684709874320@mail.yahoo.com">
      <div class=3D"ydpe6c642e6yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div><br>
        </div>
      </div>
      <div id=3D"ydpac98b132yahoo_quoted_5534964263"
        class=3D"ydpac98b132yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Saturday, 20 May 2023 at 23:14:16 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpac98b132yiv2421597430">
              <div id=3D"ydpac98b132yiv2421597430yqt84086"
                class=3D"ydpac98b132yiv2421597430yqt8146242889">
                <div>
                  <div class=3D"ydpac98b132yiv2421597430moz-cite-prefix">=
On
                    20/05/2023 18:03, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:13px;"
                    class=3D"ydpac98b132yiv2421597430ydp7a60654eyahoo-sty=
le-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I installed UHD 4.4 recently. I use
                      USRP for both transmission and receive. I find
                      that EVM in the tail part of the captured signal
                      is higher, e.g., in a 20-slot capture, in the
                      first 19 slots, EVM~=3D 1.2%, but in slot#20, evm
                      ~=3D2.9%.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">UHD 3.10 was fine. I have found this
                      problem in UHD 4.0 and UHD 4.1. Now it still
                      exists in UHD 4.4. My solution is to capture 1ms
                      more than what I need.=C2=A0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Is this a bug in FPGA?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks,</div>
                    <div dir=3D"ltr">Hongwei</div>
                    <br clear=3D"none">
                  </div>
                  Without telling us what you mean by a "slot", and
                  exactly how you're capturing, it's impossible to
                  say.=C2=A0=C2=A0 Remember, applications<br clear=3D"non=
e">
                  =C2=A0 of USRPs are *incredibly diverse*, so if you're
                  using nomenclature that is specific to your particular
                  work, others may not<br clear=3D"none">
                  =C2=A0 understand what it is you're doing.=C2=A0=C2=A0 =
Please be more
                  specific.<br clear=3D"none">
                  <br clear=3D"none">
                  My guess is that you're doing a timed capture for an
                  exact number of samples, and that timing has become a
                  bit more<br clear=3D"none">
                  =C2=A0 "tight" in more recent releases, so you're captu=
ring
                  samples as the receiver is shutting down, or the
                  transmitter is<br clear=3D"none">
                  =C2=A0 shutting down.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpac98b132yqt8146242889"
              id=3D"ydpac98b132yqt58347">________________________________=
_______________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------2bQ0sfq7fNtuSr9zHRkxK8YA--

--===============3915183889245339296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3915183889245339296==--
