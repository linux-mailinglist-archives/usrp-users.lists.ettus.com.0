Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BC35E7F1F
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 17:57:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A10433841CE
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 11:57:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663948672; bh=ZtvGvF7Z7RbnIv4MneD4D6Es+FyoBWWF3RbBc6THVQ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Wvi319Dlif85Do/T+oToGjQorI0O8Ll4PcQYFen3GG87rL8oTsN8rM7iOmsGdkcyV
	 yzLlEYMmFNOuIOvZaxDAy9tlAs0TYtqJGQxjgwSvw2tgDp4in3E2PkG8WcCLVFl/HQ
	 6Jp1ZdaZsS42S5w0deKsYunTOAbu1SjstVsqwCz9g3o0hoeNTvzPNRzEcuwpIdE6Mr
	 pRSQmuQntcBYXpirmHd7eyHKtzZkW68TSVMrJ0miDju1w1anqhO/b8ZKN7UKalPOEQ
	 g1Mc+9nQYSsJFENSnZV5vOh4qhu/qTFn7dDUZdmXqS1jw+jklljiXB7gTQbqUhDfyH
	 smA0RxQuKbFbA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 850A5383C68
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 11:57:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LTGky2Hh";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id m9so179724qvv.7
        for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=KTSWyqpTvm7O4xetYH+ZusCSQ4VLLO4baJKjrob3M+A=;
        b=LTGky2Hhm+G6W5NXDIZosFn6SArCTz61xr/xMctGfubb7677m7Tx5AAMvILwZoBWuU
         4Ndt9NPyMrVhXPNfyjjPr/LK2j+i6rdMwbl8gnU9RUgmdfEq8QYTjCLacOINjKWI4w4x
         aJRr9A7GwWcI7q/FpiCkQ9FnvWveaLkJEH5E+6xa7rzRNeu5cW4Lww8vwUK8tMyeKzcO
         fD23h/TvtHGgo7F05dmFIOcyqD12nfVVRTLnX9keLuD4w3Qli0SSFacfdWITdrfJkHPy
         tatRdTvHIq93w6AL55EWTg8vfOLVA3iC3mje/b90oVbOUzrNOCaSOLXC3jFSbPyT9WE6
         rDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=KTSWyqpTvm7O4xetYH+ZusCSQ4VLLO4baJKjrob3M+A=;
        b=wD5z1si2DnBQRA98W64maEKwExp5iQERhcduPpdPcLWEOYy9ubF1gtkcamLEfaxzLM
         IXdyr1exqioodhPz7KvNYUD7ypZ3wLy3apdA3NEUVLFUDzMl3hrlCBjPPhtv1tcqrOkL
         UFGmRmygEOACJWtdDB5m3O0Xn15TQmV3WXlFvv5QA//jlV1yEwadNK4Bs/yEoxX66X8p
         elnxcsqYfIGaduDfUBYhcY+Nd6XPSSVNjnd6vRuGQHTHpv9j55xN1rQG5d9mac/xUI3N
         g9GuxkZrmCfRKErNPfoAgbwkbZM5entG4Ibhn3XwyYIZLN8Eao/UEqrsZzqY1I0IxxLf
         DS0g==
X-Gm-Message-State: ACrzQf0IHqubpa4dSu5X1WhMNE2MlQsMg8ZkXRx6Ld5vMihdatwuoQj5
	THtGGjKvTCY4MvGBvzs+fKldGL6hpFw=
X-Google-Smtp-Source: AMsMyM4YQ4sAbBZNEpWHGmhdy2tz2OxSMiIkiiisi4n1AP5a5hxdRY8qnhW4KBkip3J2/UnGMK4RtA==
X-Received: by 2002:a05:6214:5007:b0:4ad:7835:a80a with SMTP id jo7-20020a056214500700b004ad7835a80amr7178213qvb.41.1663948623721;
        Fri, 23 Sep 2022 08:57:03 -0700 (PDT)
Received: from [192.168.2.195] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id s4-20020a05620a254400b006cf43968db6sm5965316qko.76.2022.09.23.08.57.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 08:57:03 -0700 (PDT)
Message-ID: <a3a35f45-4d35-70eb-134a-5629ed5e2f87@gmail.com>
Date: Fri, 23 Sep 2022 11:57:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A@lists.ettus.com>
 <MN2PR12MB331250CF83D30EF32CA248CBB8519@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331250CF83D30EF32CA248CBB8519@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: HRXD3RB7QI5T676ACCRVQ4SUEWQ6LBMA
X-Message-ID-Hash: HRXD3RB7QI5T676ACCRVQ4SUEWQ6LBMA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HRXD3RB7QI5T676ACCRVQ4SUEWQ6LBMA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3926384367917454061=="

This is a multi-part message in MIME format.
--===============3926384367917454061==
Content-Type: multipart/alternative;
 boundary="------------AfOm0KlS0RcJRBYpp0P0knFA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AfOm0KlS0RcJRBYpp0P0knFA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-23 11:50, Jim Palladino wrote:
> I spent a fair amount of time trying to debug this. I wrote a custom=20
> app using the RFNoC API and tried continuously changing the sample=20
> rate (while streaming). I mostly bounced back and forth between=20
> 100Msps and 200Msps, with a master clock of 200MHz. To do this, I=20
> would change the sample rate like this:
>
> =C2=A0 =C2=A0 =C2=A0 ddc_ctrl->set_output_rate(200000000, ACTIVE_CHAN);
>
> I could always get it stop working after a certain amount of time.=20
> Depending on my setup (adding sleeps in different parts of my or UHDs=20
> code), that time could vary from seconds to more than a day. When it=20
> stops working, UHD returns:
>
> Error: RfnocError: OpTimeout: Control operation timed out waiting for=20
> space in command buffer
>
> I tried issuing other commands to the DDC controller, like changing=20
> frequency. I could loop through those and other commands without ever=20
> running into this issue. It seems specific to the set_output_rate=20
> command. Adding time delays into the infinite loop, doesn't seem to=20
> help -- I still run into the issue, eventually. I debugged enough to=20
> find that where things get "stuck" is in the set_decim() method in=20
> ddc_block_control.cpp. Part of the code looks like:
>
> =C2=A0 =C2=A0 void set_decim(int decim, const size_t chan)
> =C2=A0 =C2=A0 {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE("Set decim to " << decim);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Step 1: Calculate number of halfbands
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t hb_enable =3D 0;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t cic_decim =3D decim;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 while ((cic_decim % 2 =3D=3D 0) and hb_enab=
le < _num_halfbands) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hb_enable++;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cic_decim /=3D 2;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Step 2: Make sure we can handle the rest=
 with the CIC
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(hb_enable <=3D _num_halfba=
nds);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(cic_decim > 0 and cic_deci=
m <=3D _cic_max_decim);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 const uint32_t decim_word =3D (hb_enable <<=
 8) | cic_decim;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_DECIM_ADDR, decim_=
word, chan); =C2=A0 =C2=A0 =C2=A0=20
> // Rate change =3D M/N
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_N_ADDR, decim, cha=
n);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_M_ADDR, 1, chan);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Configure time increment in ticks per M =
output samples
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_TIME_INCR_ADDR,
> uint32_t(get_tick_rate()/get_output_rate(chan)), chan);
>
> You can see a series of register pokes. I added debug statements in=20
> between the pokes and found that the command buffer error occurs=20
> almost always after:
>
> =C2=A0 =C2=A0=C2=A0 _ddc_reg_iface.poke32(SR_N_ADDR, decim, chan);
>
> Meaning that line will return, and I can see the debug statement I=20
> print out after that line. So, it seems there isn't room for the SR_M=20
> poke. Every once in a while, it would fail right after the SR_M poke=20
> instead, but that is rare. Adding sleeps in the right place (like=20
> after the SR_N poke) never seemed to fix the problem, although putting=20
> a 1s sleep after the SR_N poke greatly extended the time before failure=
.
>
> In ctrlport_endpoint.cpp, I tried changing DEFAULT_TIMEOUT from 1.0 to=20
> 10.0. The same issue still occurred, but I would see the code get=20
> stuck right after the SR_N poke and then just sit there for 10 seconds=20
> before outputting the "command buffer full" error.
>
> In the FPGA, I tried a few things like increasing some buffer sizes,=20
> watching some of the DDC related signals with an ILA, etc, but didn't=20
> make any notable progress. I don't have time to go too far with that=20
> right now.
>
> Anyhow, it looks like, every once in a while, a DDC decimation change=20
> puts something in a state where it stops working (no more data samples=20
> are streaming) and the command buffer is full.
>
> My setup is identical to Jason's from the original post (UHD 4.1.0.2,=20
> Ubuntu 18.04, N320 with XG load.
>
> If anyone has any more thoughts after reading this, it would be=20
> appreciated.
>
> Thanks,
> Jim
>
> -----------------------------------------------------------------------=
-
>
Thanks for all your work on this, Jim.

I've poked some Ettus/NI R&D folks on this, and hopefully can get a bit=20
more educated insight than I can provide--I don't
 =C2=A0 have an N320 myself, so I'd be guessing...


--------------AfOm0KlS0RcJRBYpp0P0knFA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-23 11:50, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331250CF83D30EF32CA248CBB8519@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I spent a fair amount of time trying to debug this. I wrote a
        custom app using the RFNoC API and tried continuously changing
        the sample rate (while streaming). I mostly bounced back and
        forth between 100Msps and 200Msps, with a master clock of
        200MHz. To do this, I would change the sample rate like this:<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        =C2=A0 =C2=A0 =C2=A0 ddc_ctrl-&gt;set_output_rate(200000000, ACTI=
VE_CHAN);</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I could always get it stop working after a certain amount of
        time. Depending on my setup (adding sleeps in different parts of
        my or UHDs code), that time could vary from seconds to more than
        a day. When it stops working, UHD returns:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Error: RfnocError: OpTimeout: Control operation timed out
        waiting for space in command buffer<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I tried issuing other commands to the DDC controller, like
        changing frequency. I could loop through those and other
        commands without ever running into this issue. It seems specific
        to the set_output_rate command. Adding time delays into the
        infinite loop, doesn't seem to help -- I still run into the
        issue, eventually. I debugged enough to find that where things
        get "stuck" is in the set_decim() method in
        ddc_block_control.cpp. Part of the code looks like:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        =C2=A0 =C2=A0 void set_decim(int decim, const size_t chan)
        <div>=C2=A0 =C2=A0 {</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE("Set decim to " &lt;&=
lt; decim);
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 // Step 1: Calculate number of h=
alfbands</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t hb_enable =3D 0;</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uint32_t cic_decim =3D decim;</d=
iv>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 while ((cic_decim % 2 =3D=3D 0) =
and hb_enable &lt;
          _num_halfbands) {</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hb_enable++;</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cic_decim /=3D 2;<=
/div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Step 2: Make sure we can handle th=
e rest with the CIC
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(hb_enable &lt;=3D=
 _num_halfbands);</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_ASSERT_THROW(cic_decim &gt; =
0 and cic_decim
          &lt;=3D _cic_max_decim);</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const uint32_t decim_word =3D (h=
b_enable &lt;&lt; 8)
          | cic_decim;</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_DECIM_ADDR, =
decim_word, chan);=C2=A0
        =C2=A0 =C2=A0 =C2=A0 // Rate change =3D M/N
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_N_ADDR,=
 decim, chan);</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_M_ADDR, 1, c=
han);
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 // Configure time increment in t=
icks per M output
          samples</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 _ddc_reg_iface.poke32(SR_TIME_IN=
CR_ADDR,</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          uint32_t(get_tick_rate()/get_output_rate(chan)), chan);</div>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        You can see a series of register pokes. I added debug statements
        in between the pokes and found that the command buffer error
        occurs almost always after:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <span>=C2=A0 =C2=A0=C2=A0 _ddc_reg_iface.poke32(SR_N_ADDR, decim,=
 chan);</span><br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Meaning that line will return, and I can see the debug statement
        I print out after that line. So, it seems there isn't room for
        the SR_M poke. Every once in a while, it would fail right after
        the SR_M poke instead, but that is rare. Adding sleeps in the
        right place (like after the SR_N poke) never seemed to fix the
        problem, although putting a 1s sleep after the SR_N poke greatly
        extended the time before failure.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        In ctrlport_endpoint.cpp, I tried changing DEFAULT_TIMEOUT from
        1.0 to 10.0. The same issue still occurred, but I would see the
        code get stuck right after the SR_N poke and then just sit there
        for 10 seconds before outputting the "command buffer full"
        error.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        In the FPGA, I tried a few things like increasing some buffer
        sizes, watching some of the DDC related signals with an ILA,
        etc, but didn't make any notable progress. I don't have time to
        go too far with that right now.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Anyhow, it looks like, every once in a while, a DDC decimation
        change puts something in a state where it stops working (no more
        data samples are streaming) and the command buffer is full.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        My setup is identical to Jason's from the original post (UHD
        4.1.0.2, Ubuntu 18.04, N320 with XG load.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        If anyone has any more thoughts after reading this, it would be
        appreciated.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1"><br>
    </blockquote>
    Thanks for all your work on this, Jim.<br>
    <br>
    I've poked some Ettus/NI R&amp;D folks on this, and hopefully can
    get a bit more educated insight than I can provide--I don't<br>
    =C2=A0 have an N320 myself, so I'd be guessing...<br>
    <br>
    <br>
  </body>
</html>

--------------AfOm0KlS0RcJRBYpp0P0knFA--

--===============3926384367917454061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3926384367917454061==--
