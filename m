Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CAC1CFA2
	for <lists+usrp-users@lfdr.de>; Tue, 14 May 2019 21:08:06 +0200 (CEST)
Received: from [::1] (port=38294 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQcmN-0003zp-Fl; Tue, 14 May 2019 15:07:59 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:38630)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hQclp-0003v0-At
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 15:07:55 -0400
Received: by mail-qt1-f172.google.com with SMTP id d13so335695qth.5
 for <usrp-users@lists.ettus.com>; Tue, 14 May 2019 12:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=q0+CWjj70taB3X/niGBDu0FUnpalZ+CFqRe74nsPXKk=;
 b=DmqmzXDpAcNf4/smhRxC3tvG9tut2uRILymrQdFlUntLMH+eFFrFssqJIrXECECU8/
 q15bx/iDHjxbEPa0fn8GMmPZX1VeamtcnNCVQHnDDbwcB01tQ/wp5TVo8TBahpoNOJIe
 p/r0vbA8lnJg2gUbQvyt748uxsJWn58dWgG/IthrrOHmD85Rgf9+Kdqn5N6e+X4Lu/AH
 Xr2IejCmH7d9adQcyRofB02MrzCSHOT3VH+JhRMegj8aqV+cua4li9Yq90I0oVe2lxR7
 8M7mC+Dl3BsTCE8PwOPRIObh4AWGV9biGk3HoLu8uE44bpkW5G0VboUW2nmsyMcKq4s2
 FI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=q0+CWjj70taB3X/niGBDu0FUnpalZ+CFqRe74nsPXKk=;
 b=elkuOpBfcAxkM/zDC90lEROCw3OrJ37CeoZTl/8sxyJld1REBeeiMEx8YXwjXhSyT5
 HnBdBEnC4eaabXPlzAwfvMvze25FZlC4Q8qRQlHY2VKrNHrZy6vIH1HJ10FEe8+Sx8aC
 MWYhgp4F2sQz3k+drnHFaqfVDPR/zONL2Ndx0ZpqHkSHK21wOglwRuAldagRWfAuG0mj
 cH9G6uv+goYyxfSbnCmwqF/5/GhPjgBYsi4zJJF3ff+gRbCvOP9b4IT31lXXKItlMBGC
 1bS3lzz0K2dcrDhCiW2gzDl5erio8tLEx7HsVHbEIBTH1uvX4Q0H7aDvErHhpPyl8AmW
 1XEA==
X-Gm-Message-State: APjAAAX1Uo3iCInV4hpcxqKBV6NE5GCIvyEZwtDtBnyfJLCHLu1e2QgW
 WCwujLx9lhl7CgH10W2hZ3TbL3M6
X-Google-Smtp-Source: APXvYqyWAu95Tst4dr0yDHf61avWTjNJfLxEQeQENcEqPTGdEJ/uBuNVs96ZrmzSxOKp/iutIRiRHA==
X-Received: by 2002:a0c:b64c:: with SMTP id q12mr30543501qvf.50.1557860804586; 
 Tue, 14 May 2019 12:06:44 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id w195sm9050077qkb.54.2019.05.14.12.06.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:06:43 -0700 (PDT)
Message-ID: <5CDB11C2.1040600@gmail.com>
Date: Tue, 14 May 2019 15:06:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
 <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
 <CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com>
In-Reply-To: <CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 witn TwinRX: master_clock_rate issue
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4197669454273567125=="
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
--===============4197669454273567125==
Content-Type: multipart/alternative;
 boundary="------------050905010604020007080903"

This is a multi-part message in MIME format.
--------------050905010604020007080903
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/14/2019 11:26 AM, Devin Kelly via USRP-users wrote:
> Does anyone have any ideas on this?  Is uhd_rx_cfile not the right 
> tool to be using?
>
> Devin
>
The TwinRX *MUST* run with a master clock of effectively 100MHz, because 
of the way the ADCs are shared, and the DDC structure in the
   FPGA.  Further, the fixed analog filtering is designed for a 100MHz 
clock frequency, and the synthesizers on the board require a 100MHz
   clock (AFAIR).

Simply don't specify the master clock rate when using uhd_rx_cfile, and 
the correct default *should* happen.




> On Thu, May 9, 2019 at 10:39 AM Devin Kelly <dwwkelly@gmail.com 
> <mailto:dwwkelly@gmail.com>> wrote:
>
>
>     Sorry to revive an old post but I'm having the same problem with
>     UHD 3.12.0.0.  Am I doing something wrong with uhd_rx_cfile or
>     should I just upgrade to a newer UHD?
>
>     $ uhd_rx_cfile -r 10e6 -f 850e6 -a
>     'args=192.168.40.2,master_clock_rate=200e6' tmp.dat
>     [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
>     4.8.5-36); Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
>     [WARNING] [X300] Cannot update master clock rate! X300 Series does
>     not allow changing the clock rate during runtime.
>     [WARNING] [X300 RADIO] Requesting invalid sampling rate from
>     device: 200 MHz. Actual rate is: 100 MHz.
>     [WARNING] [X300 RADIO] Requesting invalid sampling rate from
>     device: 200 MHz. Actual rate is: 100 MHz.
>     [UHD_RX] Defaulting to mid-point gains:
>     [UHD_RX] Channel 0 gain: 49.5 dB
>     ^C
>
>     Thanks,
>     Devin
>
>     On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         I’m working with the TwinRX and am having the same results as
>         Emanuel. I was ignoring the warning about the sample rate but
>         you said that it must run at 200MHz. Can you explain why UHD
>         sets the sample rate to 100MHz if 200 is required?
>
>         Thanks,
>
>         -Kevin
>
>         On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users
>         <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com><mailto:usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>>> wrote:
>
>         Dear Martin,
>
>         thank you for clarification. Yes, please add this to the
>         manual. We bought those TwinRX for some phase-coherent LTE
>         signal reception, and now they seem to be not useful at all
>         (without effort spent in sample rate conversion in
>         post-processing etc.)
>
>         I'm still wondering about the master clock rate though: I
>         tried the benchmark with the following settings:
>         ./benchmark_rate --args "master_clock_rate=200e6" --rx_subdev
>         A:0 --rx_rate 10e6
>         The TwinRX is mounted on slot A and a CBX-120 is mounted on
>         slot B. I simply wanted a streaming test on the first TwinRX
>         channel.
>         During device initialization I get the following warnings, see
>         below. Can you please comment on them?
>
>         [INFO] [0/DUC_1] Initializing block control (NOC ID:
>         0xD0C0000000000000)
>         [WARNING] [X300] Cannot update master clock rate! X300 Series
>         does not allow changing the clock rate during runtime.
>         [WARNING] [X300 RADIO] Requesting invalid sampling rate from
>         device: 200 MHz. Actual rate is: 100 MHz.
>         Using Device: Single USRP:
>           Device: X-Series Device
>           Mboard 0: X310
>           RX Channel: 0
>             RX DSP: 0
>             RX Dboard: A
>             RX Subdev: TwinRX RX0
>           TX Channel: 0
>             TX DSP: 0
>             TX Dboard: A
>             TX Subdev: Unknown (0x0094) - 0
>           TX Channel: 1
>             TX DSP: 0
>             TX Dboard: B
>             TX Subdev: CBX-120 TX
>
>         [00:00:05.874991] Setting device timestamp to 0...
>         .....
>
>         Cheers,
>         Emanuel
>
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------050905010604020007080903
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/14/2019 11:26 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Does anyone have any ideas on this?  Is uhd_rx_cfile not
          the right tool to be using?</div>
        <div><br>
        </div>
        <div>Devin<br>
        </div>
      </div>
      <br>
    </blockquote>
    The TwinRX *MUST* run with a master clock of effectively 100MHz,
    because of the way the ADCs are shared, and the DDC structure in the<br>
      FPGA.  Further, the fixed analog filtering is designed for a
    100MHz clock frequency, and the synthesizers on the board require a
    100MHz<br>
      clock (AFAIR).<br>
    <br>
    Simply don't specify the master clock rate when using uhd_rx_cfile,
    and the correct default *should* happen.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, May 9, 2019 at 10:39
          AM Devin Kelly &lt;<a moz-do-not-send="true"
            href="mailto:dwwkelly@gmail.com">dwwkelly@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div><br>
                </div>
                <div>Sorry to revive an old post but I'm having the same
                  problem with UHD 3.12.0.0.  Am I doing something wrong
                  with uhd_rx_cfile or should I just upgrade to a newer
                  UHD?<br>
                </div>
                <div><br>
                </div>
                <div style="margin-left:40px">$ uhd_rx_cfile -r 10e6 -f
                  850e6 -a 'args=192.168.40.2,master_clock_rate=200e6'
                  tmp.dat<br>
                  [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623
                  (Red Hat 4.8.5-36); Boost_105300;
                  UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>
                  [WARNING] [X300] Cannot update master clock rate! X300
                  Series does not allow changing the clock rate during
                  runtime.<br>
                  [WARNING] [X300 RADIO] Requesting invalid sampling
                  rate from device: 200 MHz. Actual rate is: 100 MHz.<br>
                  [WARNING] [X300 RADIO] Requesting invalid sampling
                  rate from device: 200 MHz. Actual rate is: 100 MHz.<br>
                  [UHD_RX] Defaulting to mid-point gains:<br>
                  [UHD_RX] Channel 0 gain: 49.5 dB<br>
                  ^C<br>
                </div>
              </div>
            </div>
            <div><br>
            </div>
            <div>Thanks,</div>
            <div>Devin<br>
            </div>
            <div><br>
            </div>
            <div class="gmail_quote">
              <div dir="ltr" class="gmail_attr">On Thu, Jan 17, 2019 at
                12:48 PM Rigney, Kevin E via USRP-users &lt;<a
                  moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com"
                  target="_blank">usrp-users@lists.ettus.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">I’m working with the
                TwinRX and am having the same results as Emanuel. I was
                ignoring the warning about the sample rate but you said
                that it must run at 200MHz. Can you explain why UHD sets
                the sample rate to 100MHz if 200 is required?<br>
                <br>
                Thanks,<br>
                <br>
                -Kevin<br>
                <br>
                On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users
                &lt;<a moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com"
                  target="_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a
                  moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com"
                  target="_blank">usrp-users@lists.ettus.com</a>&gt;&gt;
                wrote:<br>
                <br>
                Dear Martin,<br>
                <br>
                thank you for clarification. Yes, please add this to the
                manual. We bought those TwinRX for some phase-coherent
                LTE signal reception, and now they seem to be not useful
                at all (without effort spent in sample rate conversion
                in post-processing etc.)<br>
                <br>
                I'm still wondering about the master clock rate though:
                I tried the benchmark with the following settings:
                ./benchmark_rate --args "master_clock_rate=200e6"
                --rx_subdev A:0 --rx_rate 10e6<br>
                The TwinRX is mounted on slot A and a CBX-120 is mounted
                on slot B. I simply wanted a streaming test on the first
                TwinRX channel.<br>
                During device initialization I get the following
                warnings, see below. Can you please comment on them?<br>
                <br>
                [INFO] [0/DUC_1] Initializing block control (NOC ID:
                0xD0C0000000000000)<br>
                [WARNING] [X300] Cannot update master clock rate! X300
                Series does not allow changing the clock rate during
                runtime.<br>
                [WARNING] [X300 RADIO] Requesting invalid sampling rate
                from device: 200 MHz. Actual rate is: 100 MHz.<br>
                Using Device: Single USRP:<br>
                  Device: X-Series Device<br>
                  Mboard 0: X310<br>
                  RX Channel: 0<br>
                    RX DSP: 0<br>
                    RX Dboard: A<br>
                    RX Subdev: TwinRX RX0<br>
                  TX Channel: 0<br>
                    TX DSP: 0<br>
                    TX Dboard: A<br>
                    TX Subdev: Unknown (0x0094) - 0<br>
                  TX Channel: 1<br>
                    TX DSP: 0<br>
                    TX Dboard: B<br>
                    TX Subdev: CBX-120 TX<br>
                <br>
                [00:00:05.874991] Setting device timestamp to 0...<br>
                .....<br>
                <br>
                Cheers,<br>
                Emanuel<br>
                <br>
                _______________________________________________<br>
                USRP-users mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:USRP-users@lists.ettus.com"
                  target="_blank">USRP-users@lists.ettus.com</a><br>
                <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                  rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------050905010604020007080903--


--===============4197669454273567125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4197669454273567125==--

