Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A062A3037
	for <lists+usrp-users@lfdr.de>; Mon,  2 Nov 2020 17:50:14 +0100 (CET)
Received: from [::1] (port=41380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kZd23-00048A-TX; Mon, 02 Nov 2020 11:50:11 -0500
Received: from mail-ej1-f54.google.com ([209.85.218.54]:46037)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <kelvin.lok266@gmail.com>)
 id 1kZd20-000424-JR
 for usrp-users@lists.ettus.com; Mon, 02 Nov 2020 11:50:08 -0500
Received: by mail-ej1-f54.google.com with SMTP id dk16so19218176ejb.12
 for <usrp-users@lists.ettus.com>; Mon, 02 Nov 2020 08:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BcsOFVt31XjWDMvSg6J1eVi4O27IF8+mUGy+f4FA5is=;
 b=QSLACVzhZvI5IWHxaYGEGL5hOlKjWPRKe6PLhwrFA3btqtjToBqZRV/bfRykmEFRkL
 sNU2+BuaFUwmVHGnYjk0k9paZSIBS7RCPloGi3/eo/9Pv+vU9r/INU6CgVIjN9AbIPQN
 f8vWzAWtDX36DQgYyRWMvBzsHT5JswsJl9Cv5uyr0eUYlA2HjhAQVe4/78ppVTa5QnCY
 jaElYnf5iuiEUoNPdbm4Qj+v8OluC5a9q9B1MxUnqTmpNJ8w8LXbqxONOHlD3y7hsfE8
 gi+q0pHveWd5QNh8jFJa9pHSBiR+pEZSc0euwpcLFuReWPrUfZO13iRiiteEHdYyIMSr
 1SAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BcsOFVt31XjWDMvSg6J1eVi4O27IF8+mUGy+f4FA5is=;
 b=n/7DO8Lk0/w12azmP0qK8zduchVoko1nEIe7T5xSPbyVNsx78B2h58tajZnrgpyASf
 hYCuIH+Ny8JEObnzJXEax3RgY4BQQ7FFkaUQyOeVAuRl2S+jlErA96hDBJn/ammK7PPk
 jd2GMcIagLPry9UUm7qTAkGebbLXxaBXnrqFm41Pj4DKHANxW/TdB6v4uHPA5IB/yoek
 hWHZzoRdaNWpPX2A0arBJzVycsxD1I7cSe3y0NRQS+XnVoPg3EbwbVW2SISkkWUJ+xGS
 +/fBJ6YHlF8PTUg+6GmC2pGYKaomZaEM2rWBg8psGuPsRBfNKVpaEuLT1xYua85Wq78A
 2/uQ==
X-Gm-Message-State: AOAM533PVZOpjbEO1VJAhWSHmhsGu1y5VrZGwV4PFT38TwsT3JyO3IgM
 3SO8QisnQGXgQK2bE6Iwfk2h2EPDWlT9bpG2Baw=
X-Google-Smtp-Source: ABdhPJxWZP3Muwq9uq4ZpobsPS43QJsv9XdjcHiYiNV3maRTaQniN1EHqyufN2o5TcLKANNXFRJSWeaJc0f7rv9I+w8=
X-Received: by 2002:a17:906:f84f:: with SMTP id
 ks15mr8121429ejb.337.1604335767594; 
 Mon, 02 Nov 2020 08:49:27 -0800 (PST)
MIME-Version: 1.0
References: <CACSyVY2dm3ASsdK_b6k1v_CRk3G9J-wdh9_FLWHCZi+JGv=TAg@mail.gmail.com>
 <CADBWrHjmb7niNhg0Sr1TK6HFK65+4XzymvcB5hTca6n2Urc-7Q@mail.gmail.com>
In-Reply-To: <CADBWrHjmb7niNhg0Sr1TK6HFK65+4XzymvcB5hTca6n2Urc-7Q@mail.gmail.com>
Date: Tue, 3 Nov 2020 00:49:15 +0800
Message-ID: <CACSyVY1GKpg55vQDS31yR_TT8UVnHbvywbXw2cUSSWrVXah3-A@mail.gmail.com>
To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Loading B210 firmware takes forever (i.e. hang)
 after installing NI-USRP driver
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Kelvin Lok via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kelvin Lok <kelvin.lok266@gmail.com>
Content-Type: multipart/mixed; boundary="===============7682920317482164233=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7682920317482164233==
Content-Type: multipart/alternative; boundary="000000000000872ae305b322870a"

--000000000000872ae305b322870a
Content-Type: text/plain; charset="UTF-8"

Thanks Sam, that did the trick. For anyone with the same problem, to solve
my issue I used a batch script to set the UHD environments to point to my
uhd build whenever I needed UHD instead of NI-USRP. With that, I can run
both UHD apps and labview runtime apps.

Cheers!

On Sat, Oct 3, 2020 at 4:46 AM Sam Reiter <sam.reiter8@gmail.com> wrote:

> Kelvin,
>
> If I remember correctly, NI-USRP overwrites a handful of environment
> variables in Windows to point to RFNoC image paths for NI-USRP. However, I
> can't imagine why the B210 image would be any different between UHD and
> NI-USRP. You might try changing these paths to point back at the images
> from your installation of UHD.
>
> Alternative solution would be to just uninstall NI-USRP and reinstall UHD
> :)
>
> -Sam
>
> On Thu, Oct 1, 2020 at 8:18 PM Kelvin Lok via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I am running on the latest release of UHD (3.15.0.0) from github. Using
>> Windows 10, installed with the UHD binary installer.
>>
>> Typically, running ./uhd_usrp_probe takes only a few moments for the
>> firmware to be loaded onto the USRP. However, recently I have installed
>> labview runtime and NI-USRP and after that, I am no longer able to use UHD
>> to communicate to the USRP. Running uhd_usrp_probe or any of the uhd_xx_xx
>> commands will result in an endless wait for 'Loading firmware image'.
>>
>> I suspect that installing NI-USRP has resulted in a clash with my UHD.
>> Anyone have any suggestions?
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000872ae305b322870a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Sam, that did the trick. For anyone with the same p=
roblem, to solve my issue I used a batch script to set the UHD environments=
 to point to my uhd build whenever I needed UHD instead of NI-USRP. With th=
at, I can run both UHD apps and labview runtime apps.<div><br></div><div>Ch=
eers!</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, Oct 3, 2020 at 4:46 AM Sam Reiter &lt;<a href=3D"mailto:=
sam.reiter8@gmail.com">sam.reiter8@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Kelvin,<div><b=
r></div><div>If I remember correctly, NI-USRP overwrites a handful of envir=
onment variables in Windows to point to RFNoC image paths for NI-USRP. Howe=
ver, I can&#39;t imagine why the B210 image would be any different between =
UHD and NI-USRP. You might try changing these paths to point back at the im=
ages from your installation of UHD.=C2=A0</div><div><br></div><div>Alternat=
ive solution would be to just uninstall NI-USRP and reinstall UHD :)=C2=A0<=
/div><div><br></div><div>-Sam</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 1, 2020 at 8:18 PM Kelvin Lo=
k via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am running on the =
latest=C2=A0release of UHD (3.15.0.0) from github. Using Windows 10, instal=
led with the UHD binary installer.=C2=A0<div><br></div><div>Typically, runn=
ing ./uhd_usrp_probe takes only a few moments for the firmware to be loaded=
 onto the USRP. However, recently I have installed labview runtime and NI-U=
SRP and after that, I am no longer able to use UHD to communicate to the US=
RP. Running uhd_usrp_probe or any of the uhd_xx_xx commands will result in =
an endless wait for &#39;Loading firmware image&#39;.<div><br></div><div>I =
suspect that installing NI-USRP has resulted in a clash with my UHD. Anyone=
 have any suggestions?</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000872ae305b322870a--


--===============7682920317482164233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7682920317482164233==--

