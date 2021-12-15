Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D71476005
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 18:58:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75779380AF0
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 12:58:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lNjnPzHC";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 517A3384467
	for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 12:57:01 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id u16so21008359qvk.4
        for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 09:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=3nVch7PH/1a7ebASQhNys4Jzib+T281HyXNXSYdbxac=;
        b=lNjnPzHCsLgabVK6k3loHhBtKFF4HTrAZFqYGrGRXdXcB/fyT3SfJYS8a+b3uZ2HGo
         7W86LO46ZWDjTHjeWNk84DY5/jOOfTHw7jATder1BA7R7aj8m+IBVVxuyQnHZplDEwR2
         r1eYWpPv6EEOpfGE7dBLPNoXEZRotpGPORmdJq7Dt+3Nt0CsfhoDvzVAnrC9JwaJnhxg
         mucfaAbakUP8BTTx9Gpbi7ibA6DKDXTw9xHc57Aedn4tbBy4rEkTpwBSQxexqm+mSw9w
         SLE97RO+pqy9ASdQXbrYzhgXInXf8jcGSwXoKHgRpOn9qzcTxqlQoGIhedgZH86QFOJY
         a9Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=3nVch7PH/1a7ebASQhNys4Jzib+T281HyXNXSYdbxac=;
        b=ds4jSFTUDi6hOmcV5rorQpx3WaCUczfZpbsMawFToBBIIx/hvHG1mrF2qOgXeRE/Mt
         YLQFhgvzzOPSbPfTt00ZRn1WXX56WrcYCXoBFdZeFraT8bUNwXIOoUZrPxKSGUDWYqhI
         WthkyqKqduQj0CHGoEklPPbOuZEZOli8Ikr2I8/LsiLqzoosL7R3lMcQ1eIJO+cY0QzZ
         ttsiSLrswDFJN/6H0OTIg3+nhqqHS/d02eU9YNr/c97CK7q/JD6bD3XeaJ6cSnYFZotE
         L0eLOjiOzw80/ZNBNiH+L2ZMoMJTQernMOG6IXILb8TA5Vy6CafkVwp7zFSucGMguyLa
         Hpqw==
X-Gm-Message-State: AOAM533bSIu7Qf3PnUc/XmIUXCU06iHAAgWBIB1kgYhmhoC++xMOjCbR
	LkQNtwSYfAyQ2kr8w45uLuuCMWstYVo6LQ==
X-Google-Smtp-Source: ABdhPJw9kgxdzOCsUSorCWx6iAYngqNP5gygLUpIy927EcTlCt+3vjAxi74ffnhE5x01FJQ1MmoIDw==
X-Received: by 2002:a05:6214:29eb:: with SMTP id jv11mr12140441qvb.13.1639591020279;
        Wed, 15 Dec 2021 09:57:00 -0800 (PST)
Received: from [172.20.0.99] (cmr-208-97-88-52.cr.net.cable.rogers.com. [208.97.88.52])
        by smtp.googlemail.com with ESMTPSA id n20sm1433890qkp.65.2021.12.15.09.56.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 09:56:59 -0800 (PST)
Message-ID: <434cc9de-05c0-0b2b-e3fa-1fc4ba0ac530@gmail.com>
Date: Wed, 15 Dec 2021 12:56:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
 <cfbdd6b5-e395-10b7-c05d-32a85cece2cd@gmail.com>
 <YTOPR0101MB1401E7E170B997F7815CE34994769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YTOPR0101MB1401E7E170B997F7815CE34994769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: H4OUW64L6FS4V6YGYRGQ73TLQ7SZ4E6P
X-Message-ID-Hash: H4OUW64L6FS4V6YGYRGQ73TLQ7SZ4E6P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python equivalent of multi_usrp_clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H4OUW64L6FS4V6YGYRGQ73TLQ7SZ4E6P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8612621558893125532=="

This is a multi-part message in MIME format.
--===============8612621558893125532==
Content-Type: multipart/alternative;
 boundary="------------FR30Ob8FJjvylTNv160i20YM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FR30Ob8FJjvylTNv160i20YM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-15 12:04, Rohel, Remington wrote:
> I can take my best stab at it.
>
> We got a new USRP-based system running in 2019 and installed at the=20
> last of our sites this past year.
> I'm new with the organization so I don't know Robyn myself, but I've=20
> heard her name floated around her several times.
She did her graduate work there.=C2=A0 But has been a research type with=20
NRCCan for several years.


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* December 15, 2021 9:57 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Python equivalent of multi_usrp_clock
> CAUTION: External to USask. Verify sender and use caution with links=20
> and attachments. Forward suspicious emails to phishing@usask.ca
>
> On 2021-12-15 10:48, Rohel, Remington wrote:
>> Hello,
>>
>> I am currently trying to convert a USRP driver program from C++ to=20
>> Python, but I can't seem to find a Python equivalent to the=20
>> uhd::usrp::multi_usrp_clock class. For my setup, there are 16 N200s=20
>> being synced by three Octoclocks (one is an Octoclock-G which=20
>> disciplines the other two, which in turn discipline the N200s). With=20
>> the C++ program, a multi_usrp_clock object was made using the three=20
>> octoclocks, then used to set the time of the N200s (as a multi_usrp=20
>> object). The functions that were used from multi_usrp_clock were=20
>> get_time() and get_sensor(<arg>) with <arg> being one of=20
>> "gps_locked", "using_ref", or "gps_detected".
>>
>> I've tried searching through my UHD build (versions 3.14 and 4.0),=20
>> but there isn't a reference to multi_usrp_clock anywhere in the=20
>> python modules. Any help is appreciated.
>>
>> Thanks,
>>
>> Remington Rohel
>> Engineer-in-Training
>> SuperDARN Canada
>>
>>
> I don't think multi_usrp_clock has been wrapped for Python yet.=C2=A0 Y=
ou=20
> could try doing that yourself if you have the knowledge to do so.
>
> When did SuperDARN get USRPs?=C2=A0=C2=A0 I did some contract work for =
NRCCan a=20
> few years ago, working with Robyn Fiori, working on the existing
> =C2=A0 NRCCan riometer network.
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------FR30Ob8FJjvylTNv160i20YM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-15 12:04, Rohel, Remington
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:YTOPR0101MB1401E7E170B997F7815CE34994769@YTOPR0101MB1401.CANP=
RD01.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I can take my best stab at it.<br>
        <br>
        We got a new USRP-based system running in 2019 and installed at
        the last of our sites this past year.
        <br>
        I'm new with the organization so I don't know Robyn myself, but
        I've heard her name floated around her several times.<br>
      </div>
    </blockquote>
    She did her graduate work there.=C2=A0 But has been a research type w=
ith
    NRCCan for several years.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:YTOPR0101MB1401E7E170B997F7815CE34994769@YTOPR0101MB1401.CANP=
RD01.PROD.OUTLOOK.COM">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> December 15, 2021 9:57 AM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Python equivalent of
          multi_usrp_clock</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div style=3D"background-color:#FFEB9C; width:100%;
          border-style:solid; border-color:#9C6500; border-width:1pt;
          padding:2pt; font-size:10pt; line-height:12pt;
          font-family:'Calibri'; color:Black; text-align:left">
          <span style=3D"color:#9C6500">CAUTION:</span> External to USask=
.
          Verify sender and use caution with links and attachments.
          Forward suspicious emails to <a class=3D"moz-txt-link-abbreviat=
ed" href=3D"mailto:phishing@usask.ca">phishing@usask.ca</a></div>
        <br>
        <div>
          <div class=3D"x_moz-cite-prefix">On 2021-12-15 10:48, Rohel,
            Remington wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Hello,<br>
            </div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <br>
              I am currently trying to convert a USRP driver program
              from C++ to Python, but I can't seem to find a Python
              equivalent to the uhd::usrp::multi_usrp_clock class. For
              my setup, there are 16 N200s being synced by three
              Octoclocks (one is an Octoclock-G which disciplines the
              other two, which in turn discipline the N200s). With the
              C++ program, a multi_usrp_clock object was made using the
              three octoclocks, then used to set the time of the N200s
              (as a multi_usrp object). The functions that were used
              from multi_usrp_clock were get_time() and
              get_sensor(&lt;arg&gt;) with &lt;arg&gt; being one of
              "gps_locked", "using_ref", or "gps_detected".<br>
              <br>
              I've tried searching through my UHD build (versions 3.14
              and 4.0), but there isn't a reference to multi_usrp_clock
              anywhere in the python modules. Any help is appreciated.</d=
iv>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <br>
            </div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Thanks,</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <br>
            </div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Remington Rohel</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              Engineer-in-Training</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              SuperDARN Canada</div>
            <br>
            <br>
          </blockquote>
          I don't think multi_usrp_clock has been wrapped for Python
          yet.=C2=A0 You could try doing that yourself if you have the
          knowledge to do so.<br>
          <br>
          When did SuperDARN get USRPs?=C2=A0=C2=A0 I did some contract w=
ork for
          NRCCan a few years ago, working with Robyn Fiori, working on
          the existing<br>
          =C2=A0 NRCCan riometer network.=C2=A0 <br>
          <br>
          <br>
          <br>
        </div>
      </div>
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
    <br>
  </body>
</html>
--------------FR30Ob8FJjvylTNv160i20YM--

--===============8612621558893125532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8612621558893125532==--
