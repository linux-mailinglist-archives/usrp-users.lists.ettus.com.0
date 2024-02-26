Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D339868007
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 19:48:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16F2338508E
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 13:48:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708973304; bh=uUvA90SNl1O1GfiYAMX+ZVOYiTw1fCI/z4mXhwlduCs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=k5IqnUt6YbNz+bXBXDh4f3pmLVgzn7WVeFj5AmCHimvGv4H8u19ghGpp/jCDwbKI7
	 UIhPXkMc7uF6u27CsR7u2wo4MwHhPRahZSX4PjOrS+3XTRjLjCr2JkMV4+Ivnr2Yth
	 E5zxN9VkV3kxdo9uHkYgxenP1NvPsFret8A2qy1KTKNeEGoyGKA/jNtryt7EhINbxj
	 t05DbGLd+McU6Z6zScNTmL2vcArUYW5ldSsNqq7Il9D8Rp9uGsLqmlI1h0UYnqC/BL
	 jl0XQBELpshCggI5249TtyrO7KPIpKYl92ia5rIlfOnKitmTMziWqQc08H9auQeEKV
	 AAh6QWPFe9KQg==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 0383338486F
	for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 13:48:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZXasczcG";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42e8ea2caedso3848881cf.3
        for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 10:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708973295; x=1709578095; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTYfr2BZUc0FXk1EAe1Q5mYS68s4lREovpx0tr2lAgs=;
        b=ZXasczcGPrF0MGveW0QA/hedmMeu8xcZp45i6BTdmNyUlEKw8V1W4S+EyYHtBJA66b
         EMGmcLYOilxAw188kPhtkzfYstYVNT6VqAfmaFd7V8s4hDFKVRtAvgUO/a8SWdmT2z0Y
         xc7Y7tzCLKjwPhASsTAUdT6hg4a4Xk7G3qo3vvOR3+fBa/nCFGA6Mt8A3wjOscLfoX6Y
         2NC3llhaZxPZLwl4Yp1RfJsy/rdhCKU2PBlMOLsYzoLbcVCXZ336UXzYpP+yXQVDuDPB
         CEBnvSbT7AOtJX407fdLmYqYHK62W90y70h9JxSBW0w9jPQsdKZ4lH1lqnxQOLJdJ6f/
         h2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708973295; x=1709578095;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UTYfr2BZUc0FXk1EAe1Q5mYS68s4lREovpx0tr2lAgs=;
        b=GTTrjoPn6LKhBQXGAJx/wrK+qlD998T35wgTpBFex0gaplkzDEdImssIsPdorTI3cb
         qAgzhD8MPRb8JzWbFB+ao86vfsFgRhgWpnAh4mlDOTCdTQNBXzmA+IspYdU8DZJ6QTd5
         p3SvDrowv0582VzdQRqc+jHAZLlAyCAXFxFk7rrfWQ2RtEXvDal5tIQSG6EMtBZsT0fb
         phnJWs04FkK3A3GSAX6mlSGSWrh6uVpzWO7nn/rm185doFqdVq3j5fgQHg54yqginBHN
         ATd604p0el36Hmv/RFHl8FnXW3Drox+1spsRItOd9ds68+zQPOCZwT0YvTq2r1eXGloO
         /lNg==
X-Gm-Message-State: AOJu0Yy7bGQnakRAsRQvVPnfPz62qB7SVv9lUNfODZcgEEmNJnYDPv1V
	h82blg4hhtoz38pvPyCzOckST9GTQulTPu5wsEVBte2Uclsl+EapmILykN+56XI=
X-Google-Smtp-Source: AGHT+IFlai1GkpnsgTWVfAHnlVwKNfux/iu1or7VK+dDpOZSLF4iSHwsNHXzu/0+Nc9vwvZOpick+Q==
X-Received: by 2002:ac8:5f92:0:b0:42e:8f05:97b9 with SMTP id j18-20020ac85f92000000b0042e8f0597b9mr2046108qta.46.1708973295227;
        Mon, 26 Feb 2024 10:48:15 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id c21-20020ac85195000000b0042e2eb24b42sm2722522qtn.22.2024.02.26.10.48.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 10:48:15 -0800 (PST)
Message-ID: <73ddc24a-ab2e-4889-a7b5-bfd9bff3aa00@gmail.com>
Date: Mon, 26 Feb 2024 13:48:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
 <227461359.311534.1708896891513@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <227461359.311534.1708896891513@mail.yahoo.com>
Message-ID-Hash: XW2BTMNG3Z6P35AJHHRD7NT52GSC623C
X-Message-ID-Hash: XW2BTMNG3Z6P35AJHHRD7NT52GSC623C
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cable for GPIO connector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XW2BTMNG3Z6P35AJHHRD7NT52GSC623C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3321241059726210398=="

This is a multi-part message in MIME format.
--===============3321241059726210398==
Content-Type: multipart/alternative;
 boundary="------------wm559huYr7EbGe8rwiSdGvuD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wm559huYr7EbGe8rwiSdGvuD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/02/2024 16:34, Ray Roberge via USRP-users wrote:
> Ethan,
>
> I could never find any pre-wired cable assemblies for the E310=20
> connector, but the housing and female pins are cheaply available:
>
> DF20A-10DS-1C Housing........................Digikey P/N: H3143-ND=20
> $0.30 each
>
> DF20F-2830SCFA Female Pin............... Digikey P/N: H3148CT-ND=C2=A0=20
> =C2=A0$0.10 each
>
> The crimping tool that is commercially used is very=20
> expensive:https://www.mouser.com/ProductDetail/Hirose-Connector/HT302-D=
F20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D=20
> . You might try an alternative crimper, they work.
>
> Good Luck,
> Ray
Mother of sweet baby Cthulu that's expensive!


>
>
>
>
> On Saturday, February 24, 2024 at 09:12:48 PM EST, Ethan C=20
> <ethanclarke365@gmail.com> wrote:
>
>
> Hello all,
> I am looking for the part number for the GPIO connector (J12) on an=20
> E310. So that I may buy a cable to connect to it. I can't find any=20
> information online nor on the physical connector itself on the E310 I=20
> have.
>
> Thanks,
> Ethan VA7MNK
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------wm559huYr7EbGe8rwiSdGvuD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/02/2024 16:34, Ray Roberge via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:227461359.311534.1708896891513@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp72819637yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div dir=3D"ltr" data-setdir=3D"false"><span
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Etha=
n,</span></div>
          <div dir=3D"ltr" data-setdir=3D"false"><span
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br>
            </span></div>
          <div dir=3D"ltr" data-setdir=3D"false"><span
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">I
              could never find any pre-wired cable assemblies for the
              E310 connector, but the housing and female pins are
              cheaply available:</span>
            <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br
                clear=3D"none">
            </div>
            <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">DF20=
A-10DS-1C
              Housing........................Digikey P/N: H3143-ND=C2=A0
              $0.30 each</div>
            <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br
                clear=3D"none">
            </div>
            <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">DF20=
F-2830SCFA
              Female Pin............... Digikey P/N: H3148CT-ND=C2=A0 =C2=
=A0$0.10
              each</div>
          </div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br>
          </div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false">The crimping tool that is
            commercially used is very expensive:<span><span
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">=C2=A0=
</span></span><a
href=3D"https://www.mouser.com/ProductDetail/Hirose-Connector/HT302-DF20B=
-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D"
              rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://www.mouser.com/Prod=
uctDetail/Hirose-Connector/HT302-DF20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4W=
DUg%3D%3D</a>=C2=A0
            . You might try an alternative crimper, they work.</div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false">Good Luck,</div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false">Ray</div>
        </div>
      </div>
    </blockquote>
    Mother of sweet baby Cthulu that's expensive!<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:227461359.311534.1708896891513@mail.yahoo.com">
      <div class=3D"ydp72819637yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <div
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"
            dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp49cface0yahoo_quoted_9611420279"
        class=3D"ydp49cface0yahoo_quoted">
        <div
style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-=
size:13px;color:#26282a;">
          <div> On Saturday, February 24, 2024 at 09:12:48 PM EST, Ethan
            C <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:ethanclar=
ke365@gmail.com">&lt;ethanclarke365@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp49cface0yiv4821296982">
              <div dir=3D"ltr">
                <div>Hello all,</div>
                <div>I am looking for the part number for the GPIO
                  connector (J12) on an E310. So that I may buy a cable
                  to connect to it. I can't find any information online
                  nor on the physical connector itself on the E310 I
                  have.<br>
                </div>
                <div><br>
                </div>
                <div>Thanks,</div>
                <div>Ethan VA7MNK<br>
                </div>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com<=
/a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </div>
        </div>
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

--------------wm559huYr7EbGe8rwiSdGvuD--

--===============3321241059726210398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3321241059726210398==--
