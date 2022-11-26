Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E446396ED
	for <lists+usrp-users@lfdr.de>; Sat, 26 Nov 2022 16:51:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CB9D3843BD
	for <lists+usrp-users@lfdr.de>; Sat, 26 Nov 2022 10:51:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669477898; bh=q4R22RPgNj2hxuT2ViJVvhFd6Nhk+0biC8MY6Sadr7Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=D48FFXNyZzlkPOCSE6CENCAgBJdc5mukT1FmWew/ifqdL48dbz3t+yIbqU5jyWYUK
	 NRs2DNg5NoiChryEj4HlBghVuktZBtoEKk1UFjvTvjklppum/uQANygheHFdVE+ifi
	 pGGOsBBHz1J3EU6TpG2SZfkxOhlp9RYNvjpCfxJ2T4/ePfC24hyEW63hX+BtEPqIrk
	 ezz7ICkvozRj/DyCcEndHUyMLAJsUWvCKvcbpqIYgZmx+LffANnuVwAyu80IxF1KDD
	 O3i+J1mgFFFe3mVa7NR2Zd5ckEbsjwkfP/WnBceQyN3T5Lt3XWeRODzgAdOmR0bL+0
	 BXOTNamTyMKwg==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id C89D638436D
	for <usrp-users@lists.ettus.com>; Sat, 26 Nov 2022 10:51:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="cIj4OdWd";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id w4so4158953qts.0
        for <usrp-users@lists.ettus.com>; Sat, 26 Nov 2022 07:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mN/nhVOfN+B6nJhYjQhyNSWU9YmzVynqFq8enl7V0DE=;
        b=cIj4OdWdoviRNQrpYEwIRGL6khgLUi7TWKGguK8e55Nie3rSuK8wOvWGD8H9zwJfph
         YCtSZ5Y6jiR5SGLWAPKSdzqcmDHeCO1518yXxR6PBt/1GM7r2CytH4qWNEra+UQqYWpJ
         1G6iTVWTpZjAdDEfcT06fIHZEs/oBG54hUMdh1RgoMmWCvjFhCxz9JI7z8ayqeGp0alS
         Rwks12zRX662rFH4u3lREvVXUnYv9VCeZ/7bS0/nLJBQRcnqVE8QebZrUIYuuizrHC7c
         95H5cIzcdo+ZI1E7+fEU1dx2vALkLZLpGZ83Clj/A0lgC1jcVbb+dB++2HjuBGp37J49
         zS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN/nhVOfN+B6nJhYjQhyNSWU9YmzVynqFq8enl7V0DE=;
        b=q1ljhLLfQbRKiwjFyaepOBnXdyFgdMuSqCe83/HLCLYO8zsaw2OHqOUSfPHf1R/+5q
         VZszKmCNbw6kO9sestQvEzxjYPlQPto+KUJz+gD6nMhtS4yFCBtarSfKxRK+KHq+Eulf
         Wmsi/UYQd4CuiWmSs8w1VuaS4TCAJhYsEx0sYmGYBMB3gT+zhwpE0lyHvBHS40QnHKst
         U2uP5FSkds4h1mVCM85xZJRxFdX6E6yT4BBkToYtOkvt/rqV9cgx4AAkGSn3VRzJVJBf
         xzk81PDCpa2BNrDNN9EVLaeIQT5n4U75TmWKsEWJB5Ylv37p8OgVB/ygWH/NPapeCko+
         vT9A==
X-Gm-Message-State: ANoB5pnDzSSKHtuk8Sv55XbFv17YGzhheSONuR5CRsTeteOHNpHvmFyR
	bJ1CaVRsl2zy9U8cD7RBydELfBTmjZRpmHlaSKgovQ==
X-Google-Smtp-Source: AA0mqf4UCsBu1D97nJ9YPTAOxjZpIZD+4Zo1t+5b07vxu+xMr5BznyO+xLcwNu1yep/YxPziGCoxiERMD2iNfIPAuCQ=
X-Received: by 2002:ac8:4e16:0:b0:39c:c4eb:bb4d with SMTP id
 c22-20020ac84e16000000b0039cc4ebbb4dmr21791630qtw.551.1669477890905; Sat, 26
 Nov 2022 07:51:30 -0800 (PST)
MIME-Version: 1.0
References: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
 <CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=g@mail.gmail.com>
 <650d5f9f-17e1-729e-575f-1317dea283c6@gmail.com> <CAFche=jqJO3atniNhWgrBs0+c_5giTRxGGXsuKWeB7v4PEPWUQ@mail.gmail.com>
In-Reply-To: <CAFche=jqJO3atniNhWgrBs0+c_5giTRxGGXsuKWeB7v4PEPWUQ@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Sat, 26 Nov 2022 16:51:18 +0100
Message-ID: <CAKHaR3k26mQ6CQ=gbkHVqNUB=pxipg2CF9VvTBJb+j0267rS4w@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: MDIMZV5UJ6FUWKSDZFHZFFTDHMMDDCZ5
X-Message-ID-Hash: MDIMZV5UJ6FUWKSDZFHZFFTDHMMDDCZ5
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MDIMZV5UJ6FUWKSDZFHZFFTDHMMDDCZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1327235344817395768=="

--===============1327235344817395768==
Content-Type: multipart/alternative; boundary="000000000000a5edaa05ee619ce7"

--000000000000a5edaa05ee619ce7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,
thank you very much! That indeed did the trick.

Dario Pennisi

On Fri, Nov 25, 2022 at 6:21 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Dario,
>
> It looks like this mode was never officially supported. I'm going to
> follow up with R&D on Monday (it's a holiday in the US), since I don't kn=
ow
> if there's a reason this mode wasn't kept in the code. The recommended wa=
y
> to get 125 Msps is to use X4_200 with the DDC and a master clock rate of
> 250e6. But it sounds like you need 125 Msps coming out of the radio.
>
> To get it to work the way you want, I think you just need to update the
> master_to_sample_clk dict as Piotr mentioned.
>
>
> https://github.com/EttusResearch/uhd/blob/321295fba49fb66ede365afbd9ef629=
71cdfbfca/mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py#L54
>
> Add an entry to the table with:
>
> 125e6*1:       (3.00000e9, 8, False, False), # RF (1M-8G)
>
> Note that this file is part of MPM, so you actually need to edit this fil=
e
> on the X410 then restart it for it to take effect. This is where the file
> is on my X410:
>
> /usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.p=
y
>
> After restarting the X410, you should be able to set the master_clock_rat=
e
> to 125e6 as Marcus mentioned. If possible, I'll see if I can get this add=
ed
> to UHD so it will be available in the future.
>
> Thanks,
>
> Wade
>
> On Fri, Nov 25, 2022 at 9:32 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 25/11/2022 06:20, Dario Pennisi wrote:
>>
>> Hi Piotr,
>> thank you very much. i'll look into it. unfortunately it worked at 125
>> MHz on UHD 4.0 when most of the stuff was hardcoded... anyway I'll figur=
e
>> out.
>>
>> Dario Pennisi
>>
>> I'll note that UHD support for X410 wasn't *official* until UHD 4.1, so
>> anything that's based on 4.0 is based on code
>>   that was nearly-guaranteed to be "fluid".
>>
>>
>>
>> On Fri, Nov 25, 2022 at 10:51 AM <perper@o2.pl> wrote:
>>
>>> Hello,
>>>
>>> I recently experimented with adding new master clock definitions for
>>> X411 (my port of X410 code to ZCU111).
>>>
>>> Here is a commit that does that:
>>>
>>>
>>> https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c7=
0114f5011
>>>
>>> But the clocking chips on ZCU111 are different so from you perspective
>>> the commit might be cluttered with useless stuff.
>>>
>>> From my experience the key are =E2=80=98master_to_sample_clk=E2=80=98 d=
ict from
>>> x4xx_rfdc_ctrl.py
>>> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c=
70114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc25234548a=
6cfdc>
>>> (currently there is no master clock rate of 125MS/s or 100MS/s,
>>> there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=E2=80=99
>>> zcu111_clk_mgr.py
>>> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c=
70114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6ae807f09f9519903=
fe276>.
>>> Maybe legacy mode (is_legacy_mode) is also relevant in your case.
>>> I don=E2=80=99t what it was for exactly - I just removed it from X411 s=
pecific
>>> code as I don=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff that I =
need to support.
>>>
>>> Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx_sa=
mple_pll.py (and
>>> maybe x4xx_reference_pll.py) contains everything that it should for
>>> your needs. After short look it seems that it has what is needed as it
>>> has definition of 100MHz VCXO for 3e9 sample clock.
>>>
>>> If this used to work once, and you know when it worked, then you task i=
s
>>> simpler - you need to look for changes in the mentioned files and espec=
ially
>>> in the structures that I pointed to.
>>>
>>> Best Regards,
>>> Piotr Krysik
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a5edaa05ee619ce7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>thank you very much! That indeed did the tric=
k.</div><div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);=
font-family:Calibri,sans-serif;font-size:13.3333px"><br></span></div><div d=
ir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;f=
ont-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-=
family:Calibri,sans-serif;font-size:13.3333px"></div></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Nov 25, 2022 at 6:21 PM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Dario,</div><div>=
<br></div><div> It looks like this mode was never officially supported.=20
I&#39;m going to follow up with R&amp;D on Monday (it&#39;s a holiday in th=
e US), since I don&#39;t know if there&#39;s a reason this mode wasn&#39;t =
kept in the code.

The recommended way to get 125 Msps is to use X4_200 with the DDC and a mas=
ter clock rate of 250e6. But it sounds like you need 125 Msps coming out of=
 the radio.<br></div><div><br></div><div>To get it to work the way you want=
, I think you just need to update the master_to_sample_clk dict as Piotr me=
ntioned.</div><div><br></div><div><a href=3D"https://github.com/EttusResear=
ch/uhd/blob/321295fba49fb66ede365afbd9ef62971cdfbfca/mpm/python/usrp_mpm/pe=
riph_manager/x4xx_rfdc_ctrl.py#L54" target=3D"_blank">https://github.com/Et=
tusResearch/uhd/blob/321295fba49fb66ede365afbd9ef62971cdfbfca/mpm/python/us=
rp_mpm/periph_manager/x4xx_rfdc_ctrl.py#L54</a></div><div><br></div><div>Ad=
d an entry to the table with:</div><div><br></div><div>125e6*1: =C2=A0 =C2=
=A0 =C2=A0 (3.00000e9, 8, False, False), # RF (1M-8G)</div><div><br></div><=
div>Note that this file is part of MPM, so you actually need to edit this f=
ile on the X410 then restart it for it to take effect. This is where the fi=
le is on my X410:<br></div><div><br></div><div>/usr/lib/python3.7/site-pack=
ages/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py</div><div><br></div><div>Aft=
er restarting the X410, you should be able to set the master_clock_rate to =
125e6 as Marcus mentioned. If possible, I&#39;ll see if I can get this adde=
d to UHD so it will be available in the future.<br></div><div><br></div><di=
v>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 25, 2022 at 9:=
32 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 25/11/2022 06:20, Dario Pennisi
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Piotr,
        <div>thank you very much. i&#39;ll look=C2=A0into it. unfortunately=
 it
          worked at 125 MHz on UHD 4.0 when most of the stuff was
          hardcoded... anyway I&#39;ll figure out.</div>
        <div><br clear=3D"all">
          <div>
            <div dir=3D"ltr">
              <div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:=
Calibri,sans-serif;font-size:13.3333px">Dario
                  Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:C=
alibri,sans-serif;font-size:13.3333px">
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I&#39;ll note that UHD support for X410 wasn&#39;t *official* until UHD=
 4.1,
    so anything that&#39;s based on 4.0 is based on code<br>
    =C2=A0 that was nearly-guaranteed to be &quot;fluid&quot;.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 25, 2022 at 10:51
          AM &lt;<a href=3D"mailto:perper@o2.pl" target=3D"_blank">perper@o=
2.pl</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>Hello,</p>
          <p>I recently experimented with adding new master clock
            definitions for X411 (my port of X410 code to ZCU111).</p>
          <p>Here is a commit that does that:</p>
          <p><a href=3D"https://github.com/ptrkrysik/uhd/commit/719257702b7=
88703e24fa8595d190c70114f5011" target=3D"_blank">https://github.com/ptrkrys=
ik/uhd/commit/719257702b788703e24fa8595d190c70114f5011</a></p>
          <p>But the clocking chips on ZCU111 are different so from you
            perspective the commit might be cluttered with useless
            stuff.</p>
          <p>From my experience the key are =E2=80=98master_to_sample_clk=
=E2=80=98 dict
            from <a href=3D"https://github.com/ptrkrysik/uhd/commit/7192577=
02b788703e24fa8595d190c70114f5011#diff-512da83981e88a61c70b093f36b15628ec08=
6f429613f79abc25234548a6cfdc" title=3D"mpm/python/usrp_mpm/periph_manager/x=
4xx_rfdc_ctrl.py" target=3D"_blank">x4xx_rfdc_ctrl.py</a>
            (currently there is no master clock rate of 125MS/s or
            100MS/s,<br>
            there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=
=E2=80=99 <a href=3D"https://github.com/ptrkrysik/uhd/commit/719257702b7887=
03e24fa8595d190c70114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6=
ae807f09f9519903fe276" title=3D"mpm/python/usrp_mpm/periph_manager/zcu111_c=
lk_mgr.py" target=3D"_blank">zcu111_clk_mgr.py</a>.
            Maybe legacy mode (is_legacy_mode) is also relevant in your
            case.<br>
            I don=E2=80=99t what it was for exactly - I just removed it fro=
m
            X411 specific code as I don=E2=80=99t have any =E2=80=98legacy=
=E2=80=99 stuff that I
            need to support.</p>
          <p>Then you need to verify if =E2=80=98config=E2=80=98 function i=
n
            x4xx_sample_pll.py (and maybe x4xx_reference_pll.py)
            contains everything that it should for<br>
            your needs. After short look it seems that it has what is
            needed as it has definition of 100MHz VCXO for 3e9 sample
            clock.</p>
          <p>If this used to work once, and you know when it worked,
            then you task is simpler - you need to look for changes in
            the mentioned files and especially<br>
            in the structures that I pointed to.</p>
          <p>Best Regards,<br>
            Piotr Krysik</p>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a5edaa05ee619ce7--

--===============1327235344817395768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1327235344817395768==--
