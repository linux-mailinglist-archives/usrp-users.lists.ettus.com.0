Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 243116B1122
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 19:37:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F3DA385168
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 13:37:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678300638; bh=eTR0rbWrEsaCS1F5jXDM8kMxB8QMDLkb+pQ1tyllwP4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MFvby0144XNWYiiMdBSF6xRJ0xF7zsUBlRj+DJ5ljCBngrDfXadVleS9jXQESDoD/
	 3ZNtVnRvV47Y0Mx30RniXACdPB5FmKBNGoUSB+6MlQ/lufCls8Kkhb+mnyyxqUaOpA
	 tlKy1XrT8yo3u3bI9vNPgQCBWRDCQdMn8Dam7i+h03vSTAE4x1A0pPXjXM4LALi0if
	 I58egfhMx9Pj9Llt4IIBwPr9qe0eyOF/9qClPJ6L2TLn9rRh7qG0P6uyV861jgDpJU
	 w8SjGzeYXHIUxeo/mE3RNUO55jF9Arz7fBpqiOnaYhIT5EI5SgpCABzDi6517LmSOU
	 AKwn3BF5v/XwQ==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 64742384E38
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 13:36:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bNDjnglx";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id ay14so65786390edb.11
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 10:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1678300600;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cHpxx9vR2HXleeIU8rh4//vwwhPmlpBLucdwZiGXPk4=;
        b=bNDjnglxIn9wFp3heQeDuZPyAXow8dkcGqMx7RIm/wapza1iTJSDo99KamO7gjo/MX
         Vlf/B3MYu9iKrJovlwrmOKx4o5kJ08/uSv8DSvDF2jgYejrzjCAYziD9JqEV9x+RzjPq
         UYDShR5ZIUCWNl2p/BXerXlK4WDMDUISzxrcEq74S6JCqdsz+uTb8Tj7PDIz0RSNpygl
         CF/Mt/3TKZXzQdMi44W703ZwFiTI+7W+JDqJH3/w3WMX8HkzQhrHlsL71xRp5V9EyKFh
         XcRef9ZyubOsgIMnOEojmlgf5H+FDy7qKallC3ETFQe1868JMT77atq5RjXojZVuFIjx
         gpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678300600;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cHpxx9vR2HXleeIU8rh4//vwwhPmlpBLucdwZiGXPk4=;
        b=l4Us1GcccW3JEpuSg8YjWpIgQW1Epqm8AgbMzCW61Qe5CYHRWrD/39ceV1qPYk1ufX
         ERjEU6KWxh82+Co3q0f9/hw1O/WqSA9mmvnm7l9WLoDckcXfJOG+1lLflO+82ZpCxvnm
         uNAS3iPhZJZUNYENEhMu8kqGkGpU3EKICei3uOvA/BTLdnVeFA+6gylCjko8f4s+CIGh
         hPjL9+LcSBtRGaYPFKuqyrclT+dmXN16ID/9uIGjCwtK/Ki3DByYWon9hVjospq1cst7
         ahZ/bLG3KiFxg+KoQ4YfxEnOD6km3J4T/xIUxNcL336mZ4LFYDyL6Mj6Wjl/CVAAm6CG
         Y3IA==
X-Gm-Message-State: AO0yUKWFwyfkQmBrRSiNiU0p1J7Z6MuoaEDYfym0FWiz8LqXKhPSWZUO
	ywOktP9YgKblQSJGNWAUeV3fGHpZkPDe1mKUW9tG6Q==
X-Google-Smtp-Source: AK7set8jFsng38436UgBEkocboSj9i+9zFEvxzGzIMv7mpjGlzlVsjmKMITWFXmw92GfITd6ftrdt29pXLD+Bexnm9I=
X-Received: by 2002:a17:906:5811:b0:877:747d:4a90 with SMTP id
 m17-20020a170906581100b00877747d4a90mr9731804ejq.14.1678300599949; Wed, 08
 Mar 2023 10:36:39 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
 <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com> <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
In-Reply-To: <acf5a6e0-297e-adb2-6fa7-ef0760a56289@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Mar 2023 13:36:28 -0500
Message-ID: <CAB__hTTdPWUNHkmywt6kV0zA1SN3MinVHJKXOZ-Lh=UHhuHnCA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EW2XSRZEMCVW7NDKH3NVMYY2G34SYCI5
X-Message-ID-Hash: EW2XSRZEMCVW7NDKH3NVMYY2G34SYCI5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EW2XSRZEMCVW7NDKH3NVMYY2G34SYCI5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7332422225018470530=="

--===============7332422225018470530==
Content-Type: multipart/alternative; boundary="0000000000001643cf05f667cff8"

--0000000000001643cf05f667cff8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh yeah, I forgot.  Does this imply that there is no way to keep UHD from
swapping bytes in an rx_streamer (using X310)?  If so, this seems like a
problem for RFNoC development since the data coming across the wire can be
in any format the designer chooses.  And, swapping in the FPGA is not a
good solution because you don't know the Endianness of the host.
Rob

On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 08/03/2023 11:42, Rob Kossler wrote:
>
> Maybe can you just change the streamer OTW & CPU format to "sc8" such tha=
t
> no byte swapping will occur?
>
> I know that on the default X3xx builds, there's no sc8 format implemented
> on the USRP end.
>
>
>
> On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> You could swap the bytes in your block, or swap them in software on the
>> host. The data gets rearranged by the streamer depending on the data typ=
e
>> configured (e.g., sc16) and the endianness of the host machine.
>>
>> Wade
>>
>> On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via U=
SRP-users
>> <usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>>
>>> We are developing an RFNOC module that takes I/Q data, and turns that
>>> into two 8 bit values.
>>> I have a test program that sends data to the RFNOC module, and receives
>>> the modified data.
>>>
>>> The RFNOC module treats the two 8 bit values as one signed 16 bit value=
.
>>> When I read the data from the test program, I get it in the wrong order=
:
>>>
>>> Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>>> Receive: Val1 Val0 Val3 Val2
>>>
>>> Does anyone have any idea how to fix the order of the received values?
>>>
>>> Regards,
>>>
>>> Bas Vermeulen
>>>
>>> ------------------------------
>>>
>>>
>>>
>>> CONFIDENTIALITY NOTICE: This message (including any attachments) may
>>> contain Molex confidential information, protected by law. If this messa=
ge
>>> is confidential, forwarding it to individuals, other than those with a =
need
>>> to know, without the permission of the sender, is prohibited.
>>>
>>> This message is also intended for a specific individual. If you are not
>>> the intended recipient, you should delete this message and are hereby
>>> notified that any disclosure, copying, or distribution of this message =
or
>>> taking of any action based upon it, is strictly prohibited.
>>>
>>> English | Chinese | Japanese
>>> www.molex.com/confidentiality.html
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001643cf05f667cff8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh yeah, I forgot.=C2=A0 Does this imply that there is no =
way to keep UHD from swapping bytes in an rx_streamer (using X310)?=C2=A0 I=
f so, this seems like a problem for RFNoC development since the data coming=
 across the wire can be in any format the designer chooses.=C2=A0 And, swap=
ping in the FPGA is not a good solution because you don&#39;t know the Endi=
anness of the host.<div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 8, 2023 at 12:07=E2=80=AFPM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 08/03/2023 11:42, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Maybe can you just change the streamer OTW &amp;
        CPU format to &quot;sc8&quot; such that no byte swapping will occur=
?</div>
    </blockquote>
    I know that on the default X3xx builds, there&#39;s no sc8 format
    implemented on the USRP end.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at
          10:31=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.=
com" target=3D"_blank">wade.fife@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">You could swap the bytes in your block, or swap
            them in software on the host. The=C2=A0data gets rearranged by
            the streamer depending on the data type configured (e.g.,
            sc16) and the endianness of the host machine.
            <div><br>
            </div>
            <div>Wade</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at
              2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div>
                <div dir=3D"ltr">
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Hi,<=
/div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">We
                    are developing an RFNOC module that takes I/Q data,
                    and turns that into two 8 bit values.</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">I
                    have a test program that sends data to the RFNOC
                    module, and receives the modified data.</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">The
                    RFNOC module treats the two 8 bit values as one
                    signed 16 bit value.</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">When
                    I read the data from the test program, I get it in
                    the wrong order:<br>
                    <br>
                    Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Rece=
ive:
                    Val1 Val0 Val3 Val2</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Does
                    anyone have any idea how to fix the order of the
                    received values?</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Rega=
rds,</div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
                  </div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Bas
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
                    <a href=3D"http://www.molex.com/confidentiality.html" t=
arget=3D"_blank">www.molex.com/confidentiality.html</a><br>
                  </font>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a href=3D"mailto:usrp-user=
s-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a><br>
              </div>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001643cf05f667cff8--

--===============7332422225018470530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7332422225018470530==--
