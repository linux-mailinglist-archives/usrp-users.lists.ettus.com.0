Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E573D638EED
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 18:20:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0D2C384487
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 12:20:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669396811; bh=e0NheFygN080WGfdKAumYw0ulIZx44gWd+X/plGo5R0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ElbLGMtQ/+RuGYVB1ESoSSU8l3oeITajWrPPUrSqWWyFVSmRcEFTmweJdM2heXaqa
	 KMkGvq+TDVZGd849CgLr/yKHRyXTdEjwb960TjoNr1lD2fLVeOsmM1LQ3hPvFDw1O8
	 TGAYsD3p2VujgFs4SYmX9WJmd/5pH3XXpRhzEXsWupVVeeMzAZu810531jTbujTFYF
	 k1qvMRwqJmLUTdE4na5T0isyhnM6JBsMWZbPNDvMEFQh54f3Ebd9ZaQxew8GqMFtRU
	 Q27CkbDXGBQb4DAkeOoEuaom7pQMa4xnjlYuArz3FvOSI5PnPr4KvdgdtOFUNpTuhB
	 GMKGJ2QzU7+ug==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 75CC83843E2
	for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 12:20:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="A+VCWdFP";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id z20so7199474edc.13
        for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 09:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eo78/QN3ce4Ztk2bE0ZyP92h62XbhRIGQy8pSaiTT2Y=;
        b=A+VCWdFPrDG5R2nsDWpG8MAIe4Y4ZYulE+CONdmOZG6FpzjHXTj5TH/l6lSoeCSi27
         iwrKvDJ0KOXYYxb6UGNzeToW8MogYUSimRr6PpyJ9cxI3mOQX0h5RNUYK113cSjaN0va
         jwktTPoUyTwnIWGzTje4IFXW5b+j3XpID8W4UrQI03oNVCQKDedaKlu74IfB6BRst9e0
         X1QI75/GaOAfFQAPnrJ/FZR9E291ivJdNN+bqzzUzgZrkw0vSq/IXPltH4faMYvaSVCg
         69iSeDVvl2Zlu3KUbG6uKW20yjWFVqbQM2RYL0vT+3Q0rSfhsDzMsWkaCiV32lGLhZzm
         2Flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eo78/QN3ce4Ztk2bE0ZyP92h62XbhRIGQy8pSaiTT2Y=;
        b=vXNz+Y0XpTifIPnJwT8om62NLJLTfAIsQydSwKAYmMcxH5jMyCsndp05s1cUabKq9f
         jH5bHNSuUpB3d0xZxi9w/EF3FLkHQD28v5ZzUPOHlq2M279Ej7Lys6wCqE0DP6noglKv
         kSLwnxs/ocgvV0ctdo/qiXa8bWkQ4BYEMjILVoeYVraHFKw0yPF1UfGxrDBijmoqIteV
         7uUZ1JTuRRbGyn57g8hjUB6GMrbUYiCwLAVJeG4pAWEAkiQwejQiV3yAjjR1Ei9N65gK
         tvuBlPaw0BoDNwsH0CmpZMCK3K634r7qFWEVSaSZVNzH6kroKeCBgTfoF1eUIIKs38y2
         5ayg==
X-Gm-Message-State: ANoB5pnX9iWQqY7vdnV++4B63tGPbHH8NxEjZxewY/dgQWA5onCRH5cx
	EOcMJlNtxJVdV+18WpqVPmBfZkjIzcjso/X/ZjyODflH5KItSrKK
X-Google-Smtp-Source: AA0mqf6BC3vqZsYvRmkMflGDo3I4KRRjwD4yHtrrrw837zViA0MoZdlID2WPIp1nHWYUwbLhwABJvvReJIixBUIHQpw=
X-Received: by 2002:a05:6402:1f03:b0:468:7be6:55e7 with SMTP id
 b3-20020a0564021f0300b004687be655e7mr36188681edb.345.1669396803195; Fri, 25
 Nov 2022 09:20:03 -0800 (PST)
MIME-Version: 1.0
References: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
 <CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=g@mail.gmail.com> <650d5f9f-17e1-729e-575f-1317dea283c6@gmail.com>
In-Reply-To: <650d5f9f-17e1-729e-575f-1317dea283c6@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 25 Nov 2022 11:19:46 -0600
Message-ID: <CAFche=jqJO3atniNhWgrBs0+c_5giTRxGGXsuKWeB7v4PEPWUQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6FSKTXYPU4D52S4XUKWYBRET3KIE6JXB
X-Message-ID-Hash: 6FSKTXYPU4D52S4XUKWYBRET3KIE6JXB
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FSKTXYPU4D52S4XUKWYBRET3KIE6JXB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1988888204261571658=="

--===============1988888204261571658==
Content-Type: multipart/alternative; boundary="00000000000071ace005ee4ebb0f"

--00000000000071ace005ee4ebb0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dario,

It looks like this mode was never officially supported. I'm going to follow
up with R&D on Monday (it's a holiday in the US), since I don't know if
there's a reason this mode wasn't kept in the code. The recommended way to
get 125 Msps is to use X4_200 with the DDC and a master clock rate of
250e6. But it sounds like you need 125 Msps coming out of the radio.

To get it to work the way you want, I think you just need to update the
master_to_sample_clk dict as Piotr mentioned.

https://github.com/EttusResearch/uhd/blob/321295fba49fb66ede365afbd9ef62971=
cdfbfca/mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py#L54

Add an entry to the table with:

125e6*1:       (3.00000e9, 8, False, False), # RF (1M-8G)

Note that this file is part of MPM, so you actually need to edit this file
on the X410 then restart it for it to take effect. This is where the file
is on my X410:

/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py

After restarting the X410, you should be able to set the master_clock_rate
to 125e6 as Marcus mentioned. If possible, I'll see if I can get this added
to UHD so it will be available in the future.

Thanks,

Wade

On Fri, Nov 25, 2022 at 9:32 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 25/11/2022 06:20, Dario Pennisi wrote:
>
> Hi Piotr,
> thank you very much. i'll look into it. unfortunately it worked at 125 MH=
z
> on UHD 4.0 when most of the stuff was hardcoded... anyway I'll figure out=
.
>
> Dario Pennisi
>
> I'll note that UHD support for X410 wasn't *official* until UHD 4.1, so
> anything that's based on 4.0 is based on code
>   that was nearly-guaranteed to be "fluid".
>
>
>
> On Fri, Nov 25, 2022 at 10:51 AM <perper@o2.pl> wrote:
>
>> Hello,
>>
>> I recently experimented with adding new master clock definitions for X41=
1
>> (my port of X410 code to ZCU111).
>>
>> Here is a commit that does that:
>>
>>
>> https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c70=
114f5011
>>
>> But the clocking chips on ZCU111 are different so from you perspective
>> the commit might be cluttered with useless stuff.
>>
>> From my experience the key are =E2=80=98master_to_sample_clk=E2=80=98 di=
ct from
>> x4xx_rfdc_ctrl.py
>> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c7=
0114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc25234548a6=
cfdc>
>> (currently there is no master clock rate of 125MS/s or 100MS/s,
>> there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=E2=80=99 =
zcu111_clk_mgr.py
>> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c7=
0114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6ae807f09f9519903f=
e276>.
>> Maybe legacy mode (is_legacy_mode) is also relevant in your case.
>> I don=E2=80=99t what it was for exactly - I just removed it from X411 sp=
ecific
>> code as I don=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff that I n=
eed to support.
>>
>> Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx_sam=
ple_pll.py (and
>> maybe x4xx_reference_pll.py) contains everything that it should for
>> your needs. After short look it seems that it has what is needed as it
>> has definition of 100MHz VCXO for 3e9 sample clock.
>>
>> If this used to work once, and you know when it worked, then you task is
>> simpler - you need to look for changes in the mentioned files and especi=
ally
>> in the structures that I pointed to.
>>
>> Best Regards,
>> Piotr Krysik
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

--00000000000071ace005ee4ebb0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div> It looks like thi=
s mode was never officially supported.=20
I&#39;m going to follow up with R&amp;D on Monday (it&#39;s a holiday in th=
e US), since I don&#39;t know if there&#39;s a reason this mode wasn&#39;t =
kept in the code.

The recommended way to get 125 Msps is to use X4_200 with the DDC and a mas=
ter clock rate of 250e6. But it sounds like you need 125 Msps coming out of=
 the radio.<br></div><div><br></div><div>To get it to work the way you want=
, I think you just need to update the master_to_sample_clk dict as Piotr me=
ntioned.</div><div><br></div><div><a href=3D"https://github.com/EttusResear=
ch/uhd/blob/321295fba49fb66ede365afbd9ef62971cdfbfca/mpm/python/usrp_mpm/pe=
riph_manager/x4xx_rfdc_ctrl.py#L54">https://github.com/EttusResearch/uhd/bl=
ob/321295fba49fb66ede365afbd9ef62971cdfbfca/mpm/python/usrp_mpm/periph_mana=
ger/x4xx_rfdc_ctrl.py#L54</a></div><div><br></div><div>Add an entry to the =
table with:</div><div><br></div><div>125e6*1: =C2=A0 =C2=A0 =C2=A0 (3.00000=
e9, 8, False, False), # RF (1M-8G)</div><div><br></div><div>Note that this =
file is part of MPM, so you actually need to edit this file on the X410 the=
n restart it for it to take effect. This is where the file is on my X410:<b=
r></div><div><br></div><div>/usr/lib/python3.7/site-packages/usrp_mpm/perip=
h_manager/x4xx_rfdc_ctrl.py</div><div><br></div><div>After restarting the X=
410, you should be able to set the master_clock_rate to 125e6 as Marcus men=
tioned. If possible, I&#39;ll see if I can get this added to UHD so it will=
 be available in the future.<br></div><div><br></div><div>Thanks,</div><div=
><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Nov 25, 2022 at 9:32 AM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

--00000000000071ace005ee4ebb0f--

--===============1988888204261571658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1988888204261571658==--
