Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F966B1149
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 19:46:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B984384FF3
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 13:46:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678301195; bh=LpTTGo4H7Awtuj6mmPekLBAjgH0rk4S8RTFE0dySy5Y=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JXw53fzgvw6dQ56YEkQ9qrAcZCPun9tQRpBwyq1QTgbnZ3iM8excMDgz7hK02v4cv
	 LeCG3oayNQ3YgWHJOaXjz9acml05M4oFqbl/akwsnjx51fZsH71N2WcvAun7RZBuA8
	 FVB2Hec4FLL07NDrC+f1TtvPQXeXyifMx5t75QL8TOHGbRtr0/JUCGrRrDPKOHAvD0
	 dLHS+YgIhH49BD8N12Sfer3XLCGzKMPkyU7qFmKxPDFPVUcRlsLU2p+fv1YfTgvGuQ
	 qmTw4I0kEN7C5dSG/Pig2gYGLxJUCl9HzEGRMBF+sSAQb4ozGkD8kodW6c6fqllqWt
	 kdZzp9ErHNJaQ==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EC9D3384C49
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 13:45:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E3GfS9wZ";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id l13so19187106qtv.3
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 10:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678301158;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s6STgGaadHMDGB3HYxbgKOafum4tsofhfgnuMQr4k4M=;
        b=E3GfS9wZQwx/APAVhe5KV0MgEfMoVogITH3RNgLAc63QHsHr7z2dknTg+3pCbuwCOo
         9Z89ckSj0eueXrQEF9oqcrO0pJlhStjr9Dy4zGK5kyIsCc9ZpUhllr43KbCCofIEWfhF
         3fJlHo89GSz92rGk21B4z6Weqi3PB1dnUfAYtiBrdPTsvIHH+N0FnRofCIsD9+XtwnHR
         S6ifHHPDEG1pINRJ2O3v7pFffa3tCSC4B3zx10Ffu3RRsM+aBXXZlBwgluI//tUe4jOa
         nwHja+nYL1Jo9JxG6JnhfqBwUJWKXkn2Kzp7nXcQ8DyqgfFU8ZFioXnRYqeh4RcjkgoP
         KUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678301158;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s6STgGaadHMDGB3HYxbgKOafum4tsofhfgnuMQr4k4M=;
        b=C1tAyX672lr15BmjDsUdTZRK70UaN4g8uV0b61F5gflXROhKI84SS1jpxnM0OCYOHO
         lv/9NuQYFQoD/dIVG35+v473uxinWBq9e5BsrmlfBfbUdtSzEvbby+RtjCfqmVbirhZc
         2xaWUlD9JCThkZvO5NOXvLPtXhVT2T02+ddgX6U47tfZkwAHcwgZUzqufJFldvdztnAn
         SGPdBeQMsMWJ0YtNmzQ818QA1XUn54oAeehKXuol5hy4DFuF/0Rl2laqG93St3vdL1/1
         H1KydBuEZnxxzufJIlP6d9ZJhtkM2NsNGAJGuWCv7IIHciEPu6B3+/MKYFs6XUF35L6F
         MCbg==
X-Gm-Message-State: AO0yUKUyzrOjTN7e7y4BmD0GfV46RZOJRLF6p5nOGObrO4AW+A4Qy5be
	cyVVS4Mml4tjfzOuxBHTXnA=
X-Google-Smtp-Source: AK7set8rZAG1+mZ54TFBhXaSJrlhCkeHOcYYDPNR9Y4B2cojdKC1F5Nu6aW5tGusnhL9CtqDEXjsNA==
X-Received: by 2002:ac8:5911:0:b0:3c0:3be7:8c9f with SMTP id 17-20020ac85911000000b003c03be78c9fmr11201820qty.29.1678301158303;
        Wed, 08 Mar 2023 10:45:58 -0800 (PST)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id r15-20020ac867cf000000b003bfc2fc3235sm11953123qtp.67.2023.03.08.10.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 10:45:57 -0800 (PST)
Message-ID: <f64de861-4dab-89d2-11fe-686386018678@gmail.com>
Date: Wed, 8 Mar 2023 13:45:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
 <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
 <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
Message-ID-Hash: 7L5PS5UOI5BETREKW2VLDSZE4N4NNXLX
X-Message-ID-Hash: 7L5PS5UOI5BETREKW2VLDSZE4N4NNXLX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7L5PS5UOI5BETREKW2VLDSZE4N4NNXLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4426620646582719107=="

This is a multi-part message in MIME format.
--===============4426620646582719107==
Content-Type: multipart/alternative;
 boundary="------------RDy4J91leBKEoQEkWo0ldTym"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RDy4J91leBKEoQEkWo0ldTym
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/03/2023 13:36, Rob Kossler wrote:
> Oh yeah, I forgot.=C2=A0 Does this imply that there is no way to keep U=
HD=20
> from swapping bytes in an rx_streamer (using X310)?=C2=A0 If so, this s=
eems=20
> like a problem for RFNoC development since the data coming across the=20
> wire can be in any format the designer chooses.=C2=A0 And, swapping in =
the=20
> FPGA is not a good solution because you don't know the Endianness of=20
> the host.
> Rob
The "doctrine" has been to represent data types in their "natural=20
network-byte-order" on the wire, and the host code
 =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is consistent wi=
th practice in=20
nearly-all other disciplines that send data over
 =C2=A0 the network (whether that's the Internet or other ethernet networ=
ks,=20
etc).

For little-endian hosts, UHD has to do the swap.

But UHD allows you to register your own converter methods.=C2=A0 I've nev=
er=20
done it myself, but I don't think it's that hard.


>
> On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 08/03/2023 11:42, Rob Kossler wrote:
>>     Maybe can you just change the streamer OTW & CPU format to "sc8"
>>     such that no byte swapping will occur?
>     I know that on the default X3xx builds, there's no sc8 format
>     implemented on the USRP end.
>
>
>>
>>     On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife <wade.fife@ettus=
.com>
>>     wrote:
>>
>>         You could swap the bytes in your block, or swap them in
>>         software on the host. The=C2=A0data gets rearranged by the
>>         streamer depending on the data type configured (e.g., sc16)
>>         and the endianness of the host machine.
>>
>>         Wade
>>
>>         On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consult=
ant)
>>         via USRP-users <usrp-users@lists.ettus.com> wrote:
>>
>>             Hi,
>>
>>             We are developing an RFNOC module that takes I/Q data,
>>             and turns that into two 8 bit values.
>>             I have a test program that sends data to the RFNOC
>>             module, and receives the modified data.
>>
>>             The RFNOC module treats the two 8 bit values as one
>>             signed 16 bit value.
>>             When I read the data from the test program, I get it in
>>             the wrong order:
>>
>>             Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>>             Receive: Val1 Val0 Val3 Val2
>>
>>             Does anyone have any idea how to fix the order of the
>>             received values?
>>
>>             Regards,
>>
>>             Bas Vermeulen
>>
>>             ----------------------------------------------------------=
--------------
>>
>>
>>
>>             CONFIDENTIALITY NOTICE: This message (including any
>>             attachments) may contain Molex confidential information,
>>             protected by law. If this message is confidential,
>>             forwarding it to individuals, other than those with a
>>             need to know, without the permission of the sender, is
>>             prohibited.
>>
>>             This message is also intended for a specific individual.
>>             If you are not the intended recipient, you should delete
>>             this message and are hereby notified that any disclosure,
>>             copying, or distribution of this message or taking of any
>>             action based upon it, is strictly prohibited.
>>
>>             English | Chinese | Japanese
>>             www.molex.com/confidentiality.html
>>             <http://www.molex.com/confidentiality.html>
>>             _______________________________________________
>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>             To unsubscribe send an email to
>>             usrp-users-leave@lists.ettus.com
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------RDy4J91leBKEoQEkWo0ldTym
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/03/2023 13:36, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=3DUHhuHnCA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imply that ther=
e is
        no way to keep UHD from swapping bytes in an rx_streamer (using
        X310)?=C2=A0 If so, this seems like a problem for RFNoC developme=
nt
        since the data coming across the wire can be in any format the
        designer chooses.=C2=A0 And, swapping in the FPGA is not a good
        solution because you don't know the Endianness of the host.
        <div>Rob</div>
      </div>
    </blockquote>
    The "doctrine" has been to represent data types in their "natural
    network-byte-order" on the wire, and the host code<br>
    =C2=A0 can do whatever it needs to do.=C2=A0=C2=A0 This is consistent=
 with practice
    in nearly-all other disciplines that send data over<br>
    =C2=A0 the network (whether that's the Internet or other ethernet
    networks, etc).<br>
    <br>
    For little-endian hosts, UHD has to do the swap.<br>
    <br>
    But UHD allows you to register your own converter methods.=C2=A0 I've
    never done it myself, but I don't think it's that hard.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=3DUHhuHnCA@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 8, 2023 at
          12:07=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Maybe can you just change the streamer OTW
                &amp; CPU format to "sc8" such that no byte swapping
                will occur?</div>
            </blockquote>
            I know that on the default X3xx builds, there's no sc8
            format implemented on the USRP end.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023=
 at
                  10:31=E2=80=AFPM Wade Fife &lt;<a
                    href=3D"mailto:wade.fife@ettus.com" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">wade.fife@ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">You could swap the bytes in your block=
,
                    or swap them in software on the host. The=C2=A0data g=
ets
                    rearranged by the streamer depending on the data
                    type configured (e.g., sc16) and the endianness of
                    the host machine.
                    <div><br>
                    </div>
                    <div>Wade</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7,
                      2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant)=
 via
                      USRP-users &lt;<a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
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
                            are developing an RFNOC module that takes
                            I/Q data, and turns that into two 8 bit
                            values.</div>
                          <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">I
                            have a test program that sends data to the
                            RFNOC module, and receives the modified
                            data.</div>
                          <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                          </div>
                          <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">The
                            RFNOC module treats the two 8 bit values as
                            one signed 16 bit value.</div>
                          <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">When
                            I read the data from the test program, I get
                            it in the wrong order:<br>
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
                            anyone have any idea how to fix the order of
                            the received values?</div>
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
                          <hr> <font size=3D"1" face=3D"Arial" color=3D"G=
ray"><br>
                            <br>
                            <br>
                            CONFIDENTIALITY NOTICE: This message
                            (including any attachments) may contain
                            Molex confidential information, protected by
                            law. If this message is confidential,
                            forwarding it to individuals, other than
                            those with a need to know, without the
                            permission of the sender, is prohibited.<br>
                            <br>
                            This message is also intended for a specific
                            individual. If you are not the intended
                            recipient, you should delete this message
                            and are hereby notified that any disclosure,
                            copying, or distribution of this message or
                            taking of any action based upon it, is
                            strictly prohibited.<br>
                            <br>
                            English | Chinese | Japanese<br>
                            <a
                              href=3D"http://www.molex.com/confidentialit=
y.html"
                              target=3D"_blank" moz-do-not-send=3D"true">=
www.molex.com/confidentiality.html</a><br>
                          </font> </div>
                        _______________________________________________<b=
r>
                        USRP-users mailing list -- <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a><br>
                        To unsubscribe send an email to <a
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users-leav=
e@lists.ettus.com</a><br>
                      </div>
                    </blockquote>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------RDy4J91leBKEoQEkWo0ldTym--

--===============4426620646582719107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4426620646582719107==--
