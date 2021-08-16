Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D123ED453
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 14:50:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6DE7D383FF0
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 08:50:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZxGklh8l";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D2FA4383CE5
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 08:49:30 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id t68so18869433qkf.8
        for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 05:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=R0GOucjovhT5Sumk8MfOHxuRhEtucbK+PaLYUfkUa0c=;
        b=ZxGklh8lp20xLbQFIzBli0HfIqdlqSnGdfoY/AfhNTX9HvceRnbboLMltS9pZJDXez
         n9OWixOV3pW/LoPBVmj2XKZgC776S3iAOS2vBZhAIzl/68Kmr724zMAcxtZqMXKMWPRK
         8HsabPXjooKVLPPGEUc/aRfK67f+ae99jen1aqfbLz2WjIz1fP3A0XhrXbRcmuLQEp2c
         posTl+Ful/S+0Qqd7ZkVyUBSu6Sz9kihof5EiSQ3+3utBD2Gp/khSRM63182K25zsc93
         9HfdRXJPrHLI8gmx5OIyTinGgDkijVynuDHBGT9NjTfzz52hm4bFw7ZZI2hts7kkgMXY
         G3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=R0GOucjovhT5Sumk8MfOHxuRhEtucbK+PaLYUfkUa0c=;
        b=SD22KypZ4i6XB5R+z6Jh7DowHO8/aQ/7o32Q49ymsRRreV8BXea1YUAInIYb+zbsJ8
         VOTTudOc5mr5bfuDmQISar37eCEXUTGIM5r+TYS9pce4UXYLAZ65wJvMNnia1GH06hWW
         uCAvj90gKu0P8fVB2yzygrWg6bbuRdXe2YgGysdHn9x5VOtJNxAgi+95ln2NdIVswUHh
         sBshvOGwsBT/gQluCm0b4XaAQn4/IZaHF88qQoKgK3JMt+bYfnj3hzq0wtjH2YR+id+V
         FeBO9DBBeks2OEHpGIACztswPJf2KM/C8PE0zZlKhZdDvm5o7b13Q7Qj1zhdU0mho6B+
         KMhw==
X-Gm-Message-State: AOAM5316Lod84hpYiTJaJzZuwDP2FDylUWxlUeKNuKSCuwRWQTD25Hvp
	7rJHMf9u705j515/BdybTk4gvmrSUh3EUg==
X-Google-Smtp-Source: ABdhPJyPXXkuvisAZzS0AHP1jJz57lQWJIDr+Uwj7bAyMxu9VXpxfT8bZ57+f0rBxRhdnL+RYEAm3A==
X-Received: by 2002:a05:620a:110d:: with SMTP id o13mr12995422qkk.108.1629118170089;
        Mon, 16 Aug 2021 05:49:30 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c20sm2343924qkk.121.2021.08.16.05.49.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 05:49:29 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <162909902310.11274.10452860937061882564@mm2.emwd.com>
 <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <e7729784-069d-4c2e-abca-dbbc66c63e9a@gmail.com>
Date: Mon, 16 Aug 2021 08:49:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 7ARI5MOXJ422YEHO27CYF224VSZMBG7G
X-Message-ID-Hash: 7ARI5MOXJ422YEHO27CYF224VSZMBG7G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ARI5MOXJ422YEHO27CYF224VSZMBG7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4644876954341084492=="

This is a multi-part message in MIME format.
--===============4644876954341084492==
Content-Type: multipart/alternative;
 boundary="------------64931B082518452F08B5F974"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------64931B082518452F08B5F974
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-16 4:30 a.m., Ofer Saferman wrote:
> Hello,
>
> Thank you for your suggestion. I will follow up on that.
> Any comment on the RFNoC replay block?
>
> Regards,
> Ofer Saferman

I'm not sure about the RFNOC part of the question--I don't use RFNOC myse=
lf.


>
>
> On Mon, Aug 16, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com=20
> <mailto:usrp-users-request@lists.ettus.com>> wrote:
>
>     Send USRP-users mailing list submissions to
>     usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>
>     To subscribe or unsubscribe via email, send a message with subject =
or
>     body 'help' to
>     usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>
>
>     You can reach the person managing the list at
>     usrp-users-owner@lists.ettus.com
>     <mailto:usrp-users-owner@lists.ettus.com>
>
>     When replying, please edit your Subject line so it is more specific
>     than "Re: Contents of USRP-users digest..."Today's Topics:
>
>     =C2=A0 =C2=A01. Re: UHD 4.1 on E320 (Marcus D. Leech)
>
>
>
>     ---------- Forwarded message ----------
>     From:=C2=A0"Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Cc:
>     Bcc:
>     Date:=C2=A0Sun, 15 Aug 2021 08:38:46 -0400
>     Subject:=C2=A0[USRP-users] Re: UHD 4.1 on E320
>     On 08/15/2021 01:01 AM, Ofer Saferman wrote:
>     > Hello,
>     >
>     > I have a E320 that came out-of-the-box with an image on the SD
>     card of
>     > UHD 3.15.
>     > What would be the easiest way to upgrade it to UHD 4.1?
>     > Is there an SD image that is ready to program?
>     > Do I have to rebuild it on the E320?
>     >
>     > Also, can you please comment if the FPGA image of UHD 4.1 comes
>     with
>     > the RFNoC Replay block?
>     > What would be the shortest path for me to get any UHD version on
>     the
>     > E320 that has the RFNoC replay block built-in without needing to
>     > rebuild the FPGA image by myself?
>     >
>     > Thanks,
>     > Ofer Saferman
>     >
>     >
>     Ofer:
>
>     The uhd_images_downloader lets you download sd-card images these
>     days,
>     as shown in this document:
>
>     https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_S=
D_Card
>
>     So load up 4.1 on your host, and then use uhd_images_downloader to
>     pull
>     down the relevant sd-card image.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
> --=20
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and =
is
> believed to be clean.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com



--------------64931B082518452F08B5F974
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-16 4:30 a.m., Ofer Saferman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hello,</div>
        <div dir=3D"ltr"><br>
        </div>
        <div>Thank you for your suggestion. I will follow up on that.</di=
v>
        <div>Any comment on the RFNoC replay block?</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Ofer Saferman<br>
        </div>
      </div>
    </blockquote>
    <p>I'm not sure about the RFNOC part of the question--I don't use
      RFNOC myself.</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 16, 2021 at
            10:30 AM &lt;<a
              href=3D"mailto:usrp-users-request@lists.ettus.com"
              moz-do-not-send=3D"true">usrp-users-request@lists.ettus.com=
</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Send USRP-users mailing
            list submissions to<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@list=
s.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists=
.ettus.com</a><br>
            <br>
            To subscribe or unsubscribe via email, send a message with
            subject or<br>
            body 'help' to<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-requ=
est@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users-reque=
st@lists.ettus.com</a><br>
            <br>
            You can reach the person managing the list at<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owne=
r@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users-owner=
@lists.ettus.com</a><br>
            <br>
            When replying, please edit your Subject line so it is more
            specific<br>
            than "Re: Contents of USRP-users digest..."Today's Topics:<br=
>
            <br>
            =C2=A0 =C2=A01. Re: UHD 4.1 on E320 (Marcus D. Leech)<br>
            <br>
            <br>
            <br>
            ---------- Forwarded message ----------<br>
            From:=C2=A0"Marcus D. Leech" &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
              moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br=
>
            To:=C2=A0<a href=3D"mailto:usrp-users@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists=
.ettus.com</a><br>
            Cc:=C2=A0<br>
            Bcc:=C2=A0<br>
            Date:=C2=A0Sun, 15 Aug 2021 08:38:46 -0400<br>
            Subject:=C2=A0[USRP-users] Re: UHD 4.1 on E320<br>
            On 08/15/2021 01:01 AM, Ofer Saferman wrote:<br>
            &gt; Hello,<br>
            &gt;<br>
            &gt; I have a E320 that came out-of-the-box with an image on
            the SD card of <br>
            &gt; UHD 3.15.<br>
            &gt; What would be the easiest way to upgrade it to UHD 4.1?<=
br>
            &gt; Is there an SD image that is ready to program?<br>
            &gt; Do I have to rebuild it on the E320?<br>
            &gt;<br>
            &gt; Also, can you please comment if the FPGA image of UHD
            4.1 comes with <br>
            &gt; the RFNoC Replay block?<br>
            &gt; What would be the shortest path for me to get any UHD
            version on the <br>
            &gt; E320 that has the RFNoC replay block built-in without
            needing to <br>
            &gt; rebuild the FPGA image by myself?<br>
            &gt;<br>
            &gt; Thanks,<br>
            &gt; Ofer Saferman<br>
            &gt;<br>
            &gt;<br>
            Ofer:<br>
            <br>
            The uhd_images_downloader lets you download sd-card images
            these days, <br>
            as shown in this document:<br>
            <br>
            <a
href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a=
_SD_Card"
              rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"tru=
e">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_C=
ard</a><br>
            <br>
            So load up 4.1 on your host, and then use
            uhd_images_downloader to pull <br>
            down the relevant sd-card image.<br>
            <br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave=
@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
      <br>
      -- <br>
      This message has been scanned for viruses and
      <br>
      dangerous content by
      <a href=3D"http://www.mailscanner.info/" moz-do-not-send=3D"true"><=
b>MailScanner</b></a>,
      and is
      <br>
      believed to be clean.
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------64931B082518452F08B5F974--

--===============4644876954341084492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4644876954341084492==--
