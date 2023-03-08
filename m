Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 445CF6B0FD0
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 18:07:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B828384DFA
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 12:07:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678295220; bh=XQ5rnN4docX4PwHHZZ+PoLaHYwgVbDtIWjB1OlAQfWw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zBu682Esh85sxZhD5dNM4LKAsCdKoX1NYVHy5WNnTuKY1chm87NAEScIvX/jPHU8B
	 0ELBFeTk1nGbCFPGIZk40aezYycK5aYPcvrnTlt1NEbTIjSBe5y2R4YpQuQVVxuyni
	 2s7M2o56OTypXvZbBjEKWuFBNKhTT/BOsdcTHgOgw2onjvhf1kAXQPNHECQ9QXHYuF
	 T6PGJiSvo/cHdr6vf7UdEr51TNRBl7wQ1Beao6+kuSrrBvsI7YGFov4yNiQ7Qr08j3
	 HUfNwHd0tNwMLs07cAjI6Vw2lLl8wIzcQVqe5AkVSP6yHEiFb4D7PoO29H3B9S2dar
	 qgWcdraRHUQYA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 2379A385156
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 11:57:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nq2Pm+TK";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id w23so18750775qtn.6
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 08:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678294624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q76jvASP9Jsbhv6oFhR96NalUGRGkma7+RoulTCSWT8=;
        b=nq2Pm+TKFuHofVD9aoap9gu/ZK8klo2f3kf7GyyiUioSDAROsE1bpbEuIRWu195iRZ
         KjQiUa4ZgQTHe2S68z/kr96nKIHeGxvlBEB+uRdeMEK3qXphR3X8B85NVg6ZQxVL/YjF
         RiLeHKZ3Wzid/KagaWrTEW9L8x+xBmg0qGc5wCqFgQOHz/DuH0zJdeIu8HYemkNBi2AU
         wiD7ZlzkKumV9odm69hqj1KYMTpwBZuDz9wUCQ+n9pnwTe/XRRqzcD/nWEBaK7OvW4M6
         A+NiieHe4ay+O1LNoufxm7BDvWWZFboYda9PaZsOoRKFQUZnUlfQ9LkUvodpvsN1Z7/b
         PJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678294624;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q76jvASP9Jsbhv6oFhR96NalUGRGkma7+RoulTCSWT8=;
        b=fu6DXfc8Y7/WVcdrS9JbWZfaruboUOjRYX8ZGMzyggUZX7xGTpk/I1ANFOAUTRxAZ5
         FJjHHuROkLy8Qg2Bh/akUP2aOacY0GUx8jLBC8f+E8AMnMWdkM7Wwzlw94m0ppHO5SNK
         fuFejiYha//4Ecg+ZV9O5CKQX4I23jszUiN+OTGdTARqGbwWCw2JaIPGD0nyxXeM34LF
         KIjzZQyl0+gpAao30WcG2OY6xyXtHxSfM7kMRwg9NwWndYTCdrNP72i5blC8GoIcXxxW
         6arZG9t4oUu/nfpjixHNOEdgBxHol03dcfwolj3wvurzjsGZGUiKlwDtMBxHQGjd6T4M
         Tl6Q==
X-Gm-Message-State: AO0yUKXhjkHwr+P2+iTDG2exmIv7CIVVjrg2TqysWmvOl+NzFg80YlzB
	YkwhNGydIyps3xhUWCTh8mUv0uuIR+E=
X-Google-Smtp-Source: AK7set/GqgTC4EoePRi4r6zzvyXR3TMzSjnKTfpSxJowxdm7ThtuzUEsczneWv5c7cXSx+rxUVksZQ==
X-Received: by 2002:a05:622a:1988:b0:3b8:4951:57b8 with SMTP id u8-20020a05622a198800b003b8495157b8mr12405801qtc.15.1678294624349;
        Wed, 08 Mar 2023 08:57:04 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id x13-20020ac8120d000000b003bffe7fdc38sm11782880qti.9.2023.03.08.08.57.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 08:57:04 -0800 (PST)
Message-ID: <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
Date: Wed, 8 Mar 2023 11:57:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
Message-ID-Hash: ITKHGB4QV4ZIWHLY4KTESE6DLQDKFC4H
X-Message-ID-Hash: ITKHGB4QV4ZIWHLY4KTESE6DLQDKFC4H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITKHGB4QV4ZIWHLY4KTESE6DLQDKFC4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3990682656617692673=="

This is a multi-part message in MIME format.
--===============3990682656617692673==
Content-Type: multipart/alternative;
 boundary="------------MjJ2dbURNi1HoDUopMWlA0Am"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MjJ2dbURNi1HoDUopMWlA0Am
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/03/2023 11:42, Rob Kossler wrote:
> Maybe can you just change the streamer OTW & CPU format to "sc8" such=20
> that no byte swapping will occur?
I know that on the default X3xx builds, there's no sc8 format=20
implemented on the USRP end.


>
> On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife <wade.fife@ettus.com>=
 wrote:
>
>     You could swap the bytes in your block, or swap them in software
>     on the host. The=C2=A0data gets rearranged by the streamer dependin=
g on
>     the data type configured (e.g., sc16) and the endianness of the
>     host machine.
>
>     Wade
>
>     On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) =
via
>     USRP-users <usrp-users@lists.ettus.com> wrote:
>
>         Hi,
>
>         We are developing an RFNOC module that takes I/Q data, and
>         turns that into two 8 bit values.
>         I have a test program that sends data to the RFNOC module, and
>         receives the modified data.
>
>         The RFNOC module treats the two 8 bit values as one signed 16
>         bit value.
>         When I read the data from the test program, I get it in the
>         wrong order:
>
>         Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>         Receive: Val1 Val0 Val3 Val2
>
>         Does anyone have any idea how to fix the order of the received
>         values?
>
>         Regards,
>
>         Bas Vermeulen
>
>         ---------------------------------------------------------------=
---------
>
>
>
>         CONFIDENTIALITY NOTICE: This message (including any
>         attachments) may contain Molex confidential information,
>         protected by law. If this message is confidential, forwarding
>         it to individuals, other than those with a need to know,
>         without the permission of the sender, is prohibited.
>
>         This message is also intended for a specific individual. If
>         you are not the intended recipient, you should delete this
>         message and are hereby notified that any disclosure, copying,
>         or distribution of this message or taking of any action based
>         upon it, is strictly prohibited.
>
>         English | Chinese | Japanese
>         www.molex.com/confidentiality.html
>         <http://www.molex.com/confidentiality.html>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------MjJ2dbURNi1HoDUopMWlA0Am
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/03/2023 11:42, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=3D34kQ8EAVg-Ubyg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Maybe can you just change the streamer OTW &amp;
        CPU format to "sc8" such that no byte swapping will occur?</div>
    </blockquote>
    I know that on the default X3xx builds, there's no sc8 format
    implemented on the USRP end.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=3D34kQ8EAVg-Ubyg@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at
          10:31=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettu=
s.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">wade=
.fife@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">You could swap the bytes in your block, or swa=
p
            them in software on the host. The=C2=A0data gets rearranged b=
y
            the streamer depending on the data type configured (e.g.,
            sc16) and the endianness of the host machine.
            <div><br>
            </div>
            <div>Wade</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at
              2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via USRP-users =
&lt;<a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <div dir=3D"ltr">
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Hi,</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">We
                    are developing an RFNOC module that takes I/Q data,
                    and turns that into two 8 bit values.</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                    have a test program that sends data to the RFNOC
                    module, and receives the modified data.</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">The
                    RFNOC module treats the two 8 bit values as one
                    signed 16 bit value.</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">When
                    I read the data from the test program, I get it in
                    the wrong order:<br>
                    <br>
                    Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Receive:
                    Val1 Val0 Val3 Val2</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Does
                    anyone have any idea how to fix the order of the
                    received values?</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Regards,</div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">Bas
                    Vermeulen<br>
                  </div>
                  <br>
                  <hr>
                  <font size=3D"1" face=3D"Arial" color=3D"Gray"><br>
                    <br>
                    <br>
                    CONFIDENTIALITY NOTICE: This message (including any
                    attachments) may contain Molex confidential
                    information, protected by law. If this message is
                    confidential, forwarding it to individuals, other
                    than those with a need to know, without the
                    permission of the sender, is prohibited.<br>
                    <br>
                    This message is also intended for a specific
                    individual. If you are not the intended recipient,
                    you should delete this message and are hereby
                    notified that any disclosure, copying, or
                    distribution of this message or taking of any action
                    based upon it, is strictly prohibited.<br>
                    <br>
                    English | Chinese | Japanese<br>
                    <a href=3D"http://www.molex.com/confidentiality.html"
                      target=3D"_blank" moz-do-not-send=3D"true">www.mole=
x.com/confidentiality.html</a><br>
                  </font>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br>
              </div>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
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

--------------MjJ2dbURNi1HoDUopMWlA0Am--

--===============3990682656617692673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3990682656617692673==--
