Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEEA9F3505
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 16:54:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2CF61385686
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 10:54:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734364458; bh=Wf14weNLSQkBbOk07kAv01KiIfuUmoxfWwiZRec9F1k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lzpe+XZgwp+wVPoF7LrlavznSZ6Vypn155xUa1Y0YXapeWgYhEPqsgdcEIQrCgrcq
	 w1EBCCtxtYvOVAkSdgmTK9Tnu4VGJWT+G5Kv/dbPDTUFYXX5QqtWE+516m1JIpNeDk
	 LlY+JjVM2x6Hq8SdKlqVvsyIp8RlRHk58Qz1EINmX5qxY1g58DGXjz8Ndi5T4jk7su
	 mW5r5vTSJVVpWhtjm655MgUsGve4NlkNLBm68r03a4D8T2/ba+fH6AFEUslPu5cjkg
	 wjATY3R7KBl3iuanMIs8H4grrGOARWYEMFSIDTm3cyWTGNYhLaWtp2BZ/etKVXiSqt
	 NMA4X4FbgT3xw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id AE83F3841B0
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 10:53:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FccWrJFx";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6d89dc50927so31225816d6.3
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 07:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734364439; x=1734969239; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIYTq4OTC6xU49Cg3C7V/sPcDy5vJworCgEWQgbpvck=;
        b=FccWrJFxIus1577K3at3lcG7LccG9wSP9gt3PLTRHNUSzL/HNUW7q+QPypBqfVqHvm
         +KEmyo0bZU6R9RkhFm33yEOO8xGYF08wCIr/HI7+4CI7dVgzaa4B11Dh1Kk6MRg0CKs3
         EDzGwNe8YeV6noJvyKtUMZJfwyCIp0sKJIvTs+lF1nC+LFeBRs6VLLYLZM1Lf2ad6ubX
         GQz+iSDONHvs3Y7sFbm3e6lPn5A6uRP1NGSkPx/20cMdRRGFcXBMgpkz+RBMy1X8kfPl
         8zXu8vRRMi2Tnxpm9rZetrk09WGfmrLDEKBKFjPULPVXCx0Vd8/56/X5peWsmNzCNKwj
         MkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734364439; x=1734969239;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qIYTq4OTC6xU49Cg3C7V/sPcDy5vJworCgEWQgbpvck=;
        b=wKC9t2Zi2ASLo9O8D+PsAatYpYNZZanfkOUG1PqDCJeJuLbCUe/pO4S5mXeI+C97pc
         7sxFfyzEX5kmN8pCigrnVPM5bMNcgJ2gk0XbOK5fSV06vlxFdDMUZNWT5ftB7lLAQoKD
         zt7FrmfLKr1Gp7rXmqDzYjjszlK/ZKXluq1vmE0EOoMjSw/NzOEMagOB0rUzw5ZXdhiL
         YRttVo2bGRipy7DKyj/hOqY3Datm4VQM8xztrR0Au+v9hm3Mx8VB2icBi3ooPrQO7pQD
         TMHbuNRGcTCQpVkLeiiKbmMGNw2h5K+xjuDQrgYm1Wq5xCYUOllkqFZVzBlhaKsLx8md
         dJiQ==
X-Gm-Message-State: AOJu0Yy/EUWTRB+YXXir/iHF9amP+hlEw+NqZH2bqVIf9rRdO8yDZJXY
	LtT7lLwVT0l34CUHEZ4hLME9SRktW9ziv8AXgTvmpmuuzEtjxiPFszVAHg==
X-Gm-Gg: ASbGncvfbDisfbx3HQ2rjuXy9EFGk8h5hEIwYGrUGEtrd4VkHZmFfF8C793g+uB/q9T
	I4wgE1dGY9Qo6cBj+HJieOKijFOf4vDBrWWnO5ZrpbbLyTqQGgS85Kw4XpYBPQ6zx32LLsv8Jcw
	7qi0ximKR7T04DniK7HiVXo3YuDd2tLhOJd8h9SOO63WnYRyVKgVii4A5CB3gVwRT2Ajdv7mSMV
	FupNgc4C9dDc30P0RJmmFgdkYnGfEvHdn+h2JjKZz57wDOzbUgJFdWXieSSR1+bRiI=
X-Google-Smtp-Source: AGHT+IF4FSQtUgfYoCaDz0s0RtGMMcG32vWtY8dpVjQUzK1Tfex6Gf57/tA3XtyyoYytdKoLfu+woQ==
X-Received: by 2002:a05:6214:2586:b0:6d8:9f61:de8c with SMTP id 6a1803df08f44-6dc8caa9e27mr226804476d6.27.1734364438733;
        Mon, 16 Dec 2024 07:53:58 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dccd36627asm28676256d6.93.2024.12.16.07.53.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 07:53:58 -0800 (PST)
Message-ID: <815d439a-9ec8-4094-a20d-d62f72030177@gmail.com>
Date: Mon, 16 Dec 2024 10:53:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmail.com>
 <a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com>
Message-ID-Hash: KHOAHX3I7XMV3HVXESOXLIMGTNI4NBVM
X-Message-ID-Hash: KHOAHX3I7XMV3HVXESOXLIMGTNI4NBVM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHOAHX3I7XMV3HVXESOXLIMGTNI4NBVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7140808358943247652=="

This is a multi-part message in MIME format.
--===============7140808358943247652==
Content-Type: multipart/alternative;
 boundary="------------O1O55rxzbqbjJWQ0rWWGQQle"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------O1O55rxzbqbjJWQ0rWWGQQle
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/12/2024 09:44, Christophe Grimault wrote:
>
> Hello Brian,
>
> Thank you for this quick answer.
>
> So I guess this is not a limitation related to using Python vs=20
> C++/boost ? Right ?
>
> I understand that using the same streamer is tricky. Concerning your=20
> advice to go with 2 streamers, you think this a totally fine way to go =
?
>
> Otherwise, I was trying to use a single streamer because I wanted to=20
> have zero delay between the start time of the 2 streams.
>
> Chris
>
You'll HAVE to use two different streamers if you want them at different=20
sample rates.=C2=A0 It's a fairly deep
 =C2=A0 architectural limitation.


> Christophe Grimault
> NovaGrid SAS
> Les Jardins de la Teillais
> 3, all=C3=A9e de la grande =C3=A9galonne
> 35740 Pac=C3=A9, France
> Tel : (33)2 23 41 37 97
> Mob: (33)6 82 22 46 93
> www.novagrid.com
> Le 16/12/2024 =C3=A0 15:27, Brian Padalino a =C3=A9crit=C2=A0:
>> On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM Christophe Grimault=20
>> <christophe.grimault@novagrid.com> wrote:
>>
>>     Dear users,
>>
>>     I'm using python wrappers with UHD >=3D 4.5 and a X300 with 2 twin=
Rx.
>>
>>     I would like to know if it is possible to create a streamer, for
>>     more than N channels, with a sampling rate which different for
>>     each channel.
>>
>>     As for now, when I try this, I get all my 4 channels with the
>>     same sampling rate, which is the one of the last channel added.
>>
>>     Is it just possible to do it ? Say, for example, have a streamer
>>     with 2 channels :
>>
>>       * chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s
>>       * chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s
>>
>>     Thanks in advance
>>
>>
>> I don't think this is possible, but if it is I don't think it's=20
>> advisable.=C2=A0 You should use 2 different streamers.=C2=A0 The times=
tamps=20
>> associated with them should be the same so on the host you can still=20
>> align them, but the streamers itself I think would be weird trying to=20
>> receive the same N samples over the 2 channels.
>>
>> Is there any particular reason you don't want to use 2 streamers?
>>
>> Brian
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------O1O55rxzbqbjJWQ0rWWGQQle
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/12/2024 09:44, Christophe
      Grimault wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello Brian,</p>
      <p>Thank you for this quick answer.</p>
      <p>So I guess this is not a limitation related to using Python vs
        C++/boost ? Right ?</p>
      <p>I understand that using the same streamer is tricky. Concerning
        your advice to go with 2 streamers, you think this a totally
        fine way to go ?</p>
      <p>Otherwise, I was trying to use a single streamer because I
        wanted to have zero delay between the start time of the 2
        streams.</p>
      <p>Chris<br>
      </p>
    </blockquote>
    You'll HAVE to use two different streamers if you want them at
    different sample rates.=C2=A0 It's a fairly deep<br>
    =C2=A0 architectural limitation.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com">
      <p> </p>
      <pre class=3D"moz-signature" cols=3D"72">Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com"
      moz-do-not-send=3D"true">www.novagrid.com</a></pre>
      <div class=3D"moz-cite-prefix">Le 16/12/2024 =C3=A0 15:27, Brian Pa=
dalino
        a =C3=A9crit=C2=A0:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmai=
l.com">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <div dir=3D"ltr">
          <div dir=3D"ltr">On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM Christ=
ophe
            Grimault &lt;<a
              href=3D"mailto:christophe.grimault@novagrid.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ch=
ristophe.grimault@novagrid.com</a>&gt;
            wrote:</div>
          <div class=3D"gmail_quote gmail_quote_container">
            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
              <div>
                <p>Dear users,</p>
                <p>I'm using python wrappers with UHD &gt;=3D 4.5 and a
                  X300 with 2 twinRx.</p>
                <p>I would like to know if it is possible to create a
                  streamer, for more than N channels, with a sampling
                  rate which different for each channel.</p>
                <p>As for now, when I try this, I get all my 4 channels
                  with the same sampling rate, which is the one of the
                  last channel added.</p>
                <p>Is it just possible to do it ? Say, for example,=C2=A0
                  have a streamer with 2 channels : <br>
                </p>
                <ul>
                  <li>chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s</li>
                  <li>chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s</li>
                </ul>
                <p>Thanks in advance<br>
                </p>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>I don't think this is possible, but if it is I don't
              think it's advisable.=C2=A0 You should use 2 different
              streamers.=C2=A0 The timestamps associated with them should=
 be
              the same so on the host you can still align them, but the
              streamers itself I think would be weird trying to receive
              the same N samples over the 2 channels.</div>
            <div><br>
            </div>
            <div>Is there any particular reason you don't want to use 2
              streamers?</div>
            <div><br>
            </div>
            <div>Brian</div>
          </div>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
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

--------------O1O55rxzbqbjJWQ0rWWGQQle--

--===============7140808358943247652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7140808358943247652==--
