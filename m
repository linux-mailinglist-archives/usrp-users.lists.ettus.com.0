Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE03D502F
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 15:54:56 +0200 (CEST)
Received: from [::1] (port=53532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJHr9-0001Tr-Fc; Sat, 12 Oct 2019 09:54:51 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:39307)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iJHr5-0001Oi-Hj
 for usrp-users@lists.ettus.com; Sat, 12 Oct 2019 09:54:47 -0400
Received: by mail-qt1-f169.google.com with SMTP id n7so18189152qtb.6
 for <usrp-users@lists.ettus.com>; Sat, 12 Oct 2019 06:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=/3y12EfQExLoYQWORyKKOdMqcMdpcXmYqNj+2p7rncU=;
 b=AKJSlKh6ZAVZxguqQlU5pL+H8SUgI0J0tNHxG+Qeu+6Y7vA6OuxE/Q0Q/Gc39NexzS
 MWzr38l95ZQwbSMbhT1odHFve+wgbxvmedE6kZGbtmGZ7Q9XP6KPoqgQEtvEj0mubYtL
 ByjBidGF8joHyKz2EZeg73m8WMg6h1aJpkyzhQoYD+EgJ41btKqWFsjOmoBdB0O6ll8l
 udoMa0D65zxf8aY3Zb1FDhVUToNiBoIq6lPwufCZcLddDzj4Ux0fyJImHpR5D1U6Fy6F
 /u3D6XjOcidCwJw3csA5+/dGC04s+Ft4hffpSnSfJmqpHV0D/FgF17qDsQInu2NYHZTc
 cxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:message-id:date
 :user-agent:mime-version:in-reply-to;
 bh=/3y12EfQExLoYQWORyKKOdMqcMdpcXmYqNj+2p7rncU=;
 b=cYD0P4X4NEmjTJdLMwUqimnHmfbUCoN7BiaPDaeoVDpfpP4dSdypzcVxeZg8B3KtnH
 UApAgPQnvuXvXcgrlecqyeFCHVGUVAnoaIZw2PS01ZV0MEp6jET3dSQIGHLBtyOjt7Zl
 +NKHaFORSFyJCjPTGGQw8K6YZ2m7un1qF4ejyQ7hDtvxqLUwVi+X8IIH7B0DZEPbadYa
 xrJMy7NJxykK/JrzAoBKkcJdDONgr/ZZwWamEYHT17y+vJGiowfxzhwc58CIlXqP1w/K
 gTmdihVZ78wv0B/ptRsob6846xV9ek+BYoHJDS/mIKD9KFWrTMNM4v+1DRY1qrODHjdB
 +ndw==
X-Gm-Message-State: APjAAAX912Z55f+vAIbknxRXOiO7pFtWmpQ3Eh3GuZiCmKCeJSh7XD/G
 bbhPyNl16sR/DZ2ycXA6pc3mQcTnuHVUqA==
X-Google-Smtp-Source: APXvYqwfcmuCx1xAYsCrHSyRdG62AQdKRRMlnaEibs/TLAe/uHlqSnpVfGhEZgGgrpk20OlYp8qZ8w==
X-Received: by 2002:a0c:b057:: with SMTP id l23mr21899089qvc.216.1570888446375; 
 Sat, 12 Oct 2019 06:54:06 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id i25sm5660879qkk.30.2019.10.12.06.54.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 12 Oct 2019 06:54:05 -0700 (PDT)
To: Martin Braun <martin.braun@ettus.com>
References: <6EAAB96A-D0DD-4531-B3CB-2E5912511ED2@gmail.com>
 <CAFOi1A6MFu9dEpBG8rT=ZPYK-9SK-nDfW+Fc=JTSkGtAebn-og@mail.gmail.com>
Message-ID: <d36de887-2904-c036-dacb-5c369709a909@gmail.com>
Date: Sat, 12 Oct 2019 09:54:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFOi1A6MFu9dEpBG8rT=ZPYK-9SK-nDfW+Fc=JTSkGtAebn-og@mail.gmail.com>
Subject: Re: [USRP-users] Some questions regarding DDC implementation
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Francesco Restuccia via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francesco Restuccia <frestuc@gmail.com>
Cc: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2492397272416804688=="
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

This is a multi-part message in MIME format.
--===============2492397272416804688==
Content-Type: multipart/alternative;
 boundary="------------EC4A5A71E141D77C64A669AC"

This is a multi-part message in MIME format.
--------------EC4A5A71E141D77C64A669AC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Martin,

Thanks for your response --
Could you further clarify the following pieces of code in 
rx_dsp_core_200.cpp regarding the scaling factor?

const double rate_pow = std::pow(double(decim & 0xff), 4);
_scaling_adjustment = std::pow(2, ceil_log2(rate_pow))/(1.65*rate_pow);
this->update_scalar();

where update_scalar is:

void update_scalar(void){
         const double factor = 1.0 + 
std::max(ceil_log2(_scaling_adjustment), 0.0);
         const double target_scalar = (1 << 
17)*_scaling_adjustment/_dsp_extra_scaling/factor;
         const int32_t actual_scalar = boost::math::iround(target_scalar);
         _fxpt_scalar_correction = target_scalar/actual_scalar*factor; 
//should be small
         _iface->poke32(REG_DSP_RX_SCALE_IQ, actual_scalar);
     }

Would be nice to understand the rationale behind these constants and 
calculations.

Thanks,
Francesco

On 10/11/19 7:08 PM, Martin Braun wrote:
> Half-Bands are very flat in the passband, and somewhat efficient to 
> implement because every second tap is zero. The CIC on the other hand, 
> is super efficient, but has a horrible frequency response.
>
> So, you want to use the half-bands for decimation whenever possible. 
> You will have fewer aliases, the spectrum looks nicer, etc.
>
> More halfbands is always better. But two halfbands was chosen because 
> on the N210, it's a good compromise between available resources and 
> spectral improvements. Also, keep in mind that you can only stack 
> halfbands as long as your decimation is a multiple of two. If your 
> decimation is 6 (= 2 * 3), then you can only use one halfband, and set 
> the CIC to 3. In other words, adding another halfband only enables 
> rates where the decimation rate is a multiple of 8, and so on.
>
> Next, why are they different. That was another compromise. More taps 
> are always better, so why not use the bigger one twice? That's because 
> when cascading the halfbands, the fidelity of the second filter 
> reduces the requirement for a super-good first filter. If you draw 
> this on a piece of paper, it's more obvious, but here's an attempt at 
> writing it as text: Fewer taps in a halfband mean the transition band 
> (from passband to stop band) is wider, which makes the flat passband 
> smaller. However, because the second half-band will further reduce the 
> total available bandwidth, you don't need a super sharp transition zone.
>
> Finally, what does the multiplier do. In software, we calculate a 
> total gain of our DSP chain, based on the CIC settings and some other 
> numbers we have figured out. For example, the CORDIC has an almost 
> constant, non-zero gain. and the CIC decimator has a non-constant gain 
> which is a function of the decimation (all of this because we're doing 
> fixpoint math). We try and negate this as much as possible by 
> multiplying the output with a compensation factor.
>
> -- M
>
> On Fri, Oct 11, 2019 at 10:57 AM Francesco Restuccia via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Dear all,
>     I have some questions regarding the DDC implementation
>     (ddc_chain.v, usrp2):
>
>     1) Why do we need two half-band filters (one large and one small)
>     after the CIC? What is their purpose? Can’t we use just one
>     half-band?
>     2) What is the purpose of the scale factor multiplication after
>     hb2? What does it compensate for? How do we decide its value?
>
>     Thanks,
>     Francesco
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------EC4A5A71E141D77C64A669AC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div>Hi Martin,</div>
    <div><br>
      Thanks for your response -- <br>
      Could you further clarify the following pieces of code in
      rx_dsp_core_200.cpp regarding the scaling factor? <br>
    </div>
    <div><br>
    </div>
    <div>const double rate_pow = std::pow(double(decim &amp; 0xff), 4);<br>
      _scaling_adjustment = std::pow(2,
      ceil_log2(rate_pow))/(1.65*rate_pow);<br>
      this-&gt;update_scalar();<br>
    </div>
    <div><br>
    </div>
    <div>where update_scalar is:</div>
    <div><br>
    </div>
    <div>void update_scalar(void){<br>
              const double factor = 1.0 +
      std::max(ceil_log2(_scaling_adjustment), 0.0);<br>
              const double target_scalar = (1 &lt;&lt;
      17)*_scaling_adjustment/_dsp_extra_scaling/factor;<br>
              const int32_t actual_scalar =
      boost::math::iround(target_scalar);<br>
              _fxpt_scalar_correction =
      target_scalar/actual_scalar*factor; //should be small<br>
              _iface-&gt;poke32(REG_DSP_RX_SCALE_IQ, actual_scalar);<br>
          }<br>
    </div>
    <div><br>
      Would be nice to understand the rationale behind these constants
      and calculations.<br>
    </div>
    <div><br>
      Thanks,<br>
      Francesco<br>
    </div>
    <div><br>
    </div>
    <div class="moz-cite-prefix">On 10/11/19 7:08 PM, Martin Braun
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFOi1A6MFu9dEpBG8rT=ZPYK-9SK-nDfW+Fc=JTSkGtAebn-og@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Half-Bands are very flat in the passband, and somewhat
          efficient to implement because every second tap is zero. The
          CIC on the other hand, is super efficient, but has a horrible
          frequency response.</div>
        <div><br>
        </div>
        <div>So, you want to use the half-bands for decimation whenever
          possible. You will have fewer aliases, the spectrum looks
          nicer, etc.</div>
        <div><br>
        </div>
        <div>More halfbands is always better. But two halfbands was
          chosen because on the N210, it's a good compromise between
          available resources and spectral improvements. Also, keep in
          mind that you can only stack halfbands as long as your
          decimation is a multiple of two. If your decimation is 6 (= 2
          * 3), then you can only use one halfband, and set the CIC to
          3. In other words, adding another halfband only enables rates
          where the decimation rate is a multiple of 8, and so on.</div>
        <div><br>
        </div>
        <div>Next, why are they different. That was another compromise.
          More taps are always better, so why not use the bigger one
          twice? That's because when cascading the halfbands, the
          fidelity of the second filter reduces the requirement for a
          super-good first filter. If you draw this on a piece of paper,
          it's more obvious, but here's an attempt at writing it as
          text: Fewer taps in a halfband mean the transition band (from
          passband to stop band) is wider, which makes the flat passband
          smaller. However, because the second half-band will further
          reduce the total available bandwidth, you don't need a super
          sharp transition zone.</div>
        <div><br>
        </div>
        <div>Finally, what does the multiplier do. In software, we
          calculate a total gain of our DSP chain, based on the CIC
          settings and some other numbers we have figured out. For
          example, the CORDIC has an almost constant, non-zero gain. and
          the CIC decimator has a non-constant gain which is a function
          of the decimation (all of this because we're doing fixpoint
          math). We try and negate this as much as possible by
          multiplying the output with a compensation factor.</div>
        <div><br>
        </div>
        <div>-- M<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Oct 11, 2019 at 10:57
          AM Francesco Restuccia via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear
          all,<br>
          I have some questions regarding the DDC implementation
          (ddc_chain.v, usrp2):<br>
          <br>
          1) Why do we need two half-band filters (one large and one
          small) after the CIC? What is their purpose? Can’t we use just
          one half-band? <br>
          2) What is the purpose of the scale factor multiplication
          after hb2? What does it compensate for? How do we decide its
          value?<br>
          <br>
          Thanks,<br>
          Francesco<br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------EC4A5A71E141D77C64A669AC--


--===============2492397272416804688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2492397272416804688==--

