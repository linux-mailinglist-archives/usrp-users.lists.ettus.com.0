Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 861DA22852F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:20:03 +0200 (CEST)
Received: from [::1] (port=41690 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxuzn-0004Pv-Pt; Tue, 21 Jul 2020 12:19:59 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:38296)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxuzj-0004IN-N5
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:19:55 -0400
Received: by mail-qk1-f172.google.com with SMTP id e13so19876913qkg.5
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 09:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=RHNnKsXtqJtpxHsxXxBQztoH+zsV/wkFedEXDgyFWmE=;
 b=UkcidihiEOP5ySd5sdwfJF7k12glmu+FzCvEAZH8K0zHCMKJf4YVWZSksFdJd33JzC
 KSzmT9PfliH5Oq40YW77lLnufInTH+DDBSTwXtRMty5w6cQsLRReMnuUMPnM51Kfs74/
 birWw5ykCJsXgeVSIBqah8Gm2V1OlNcyKg53Do4jLluh/KpAq6+FL0hk2qKB2QJbkZDD
 YrTGzcgYxVal/shiLUhnyps9e1dEMA5yWPjFzL8+dSXiRm25Ffq4BmC4PBuVK8Hq5Oyf
 xkFaJno6yap3lCwlI8eu29WhgUq5RAECa9qSG5xtIeBx5mVRelWERsAzb+mXhSCJ4d+6
 bBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=RHNnKsXtqJtpxHsxXxBQztoH+zsV/wkFedEXDgyFWmE=;
 b=qSVU90T7BzdQjO8sfr+04fuH3vjDbL01jChG98Ey92xGxYF4kIj5OOPlmYLGfytSgD
 yvHY65bZmFYxx0yE9qvQ9mF1PQmqr7flIrJLkFR6zp3AQIlVyoFrOO+EImnGX6iMzLON
 lKUjgUWIxIF+A4bHWHVpLVmW4sJF4RUsBJWiE/ZxbLNYuS72Y0S92aISByw4j9MhPVqW
 bzDOrVfiHzOTlu2/JECbc6cCjB3NMheL91Dfu5RHpxdVH89FMu64tPhNNh8RpcEu8Hh8
 hf22ztsGiERsFoplELqwX3lAeUutVn9YUU6IoNk/YbJegAwmOmVqnaiHU3/sDZe0m6z6
 H3xg==
X-Gm-Message-State: AOAM533mO9+LDBuHqUadNANvXkyBM4qOxU9L27U+57fDGPsIQX8Hzj1y
 z3DjMwT0UMCLWNwSdPwOchULUcDx5eOTeA==
X-Google-Smtp-Source: ABdhPJw+bgWq6lpnnMg1rKnyrPRgWIpHMdHL8vAvWyM91RnWw1nDdwGlilQ5bW48JhFYI6DW2D1iTQ==
X-Received: by 2002:a37:9dd3:: with SMTP id
 g202mr26380852qke.432.1595348354933; 
 Tue, 21 Jul 2020 09:19:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x3sm2982842qkd.62.2020.07.21.09.19.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 09:19:14 -0700 (PDT)
Message-ID: <5F171581.7080201@gmail.com>
Date: Tue, 21 Jul 2020 12:19:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <001b01d65f79$eae66ea0$c0b34be0$@com>
In-Reply-To: <001b01d65f79$eae66ea0$c0b34be0$@com>
Subject: Re: [USRP-users] 1 Ts delay in USRP B210
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5120468436278674812=="
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
--===============5120468436278674812==
Content-Type: multipart/alternative;
 boundary="------------010306050300000107080002"

This is a multi-part message in MIME format.
--------------010306050300000107080002
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/21/2020 12:13 PM, Prasad via USRP-users wrote:
>
> Soft reminder!
>
> Thanks,
>
> *From:*Prasad [mailto:kpras@trilcomm.com]
> *Sent:* Monday, July 20, 2020 7:58 PM
> *To:* 'usrp-users@lists.ettus.com'
> *Cc:* 'Rao Yenamandra'
> *Subject:* 1 Ts delay in USRP B210
>
> Dear Team.
>
> Hope you are doing well and safe.
>
> We are bringing up our NR-5G UE stack with USRP B210.
>
> If time permits, would you pls. reply to below concern with your 
> valuable information.
>
> During the synchronization procedure, we observe atleast 1  (Sampling 
> Time) drift in rx streamer in every  ~40ms time period.
>
> Are we missing any time_spec during /uhd_rx_streamer_recv/ api or in 
> /uhd_tx_streamer_send/ ?
>
> Master clock rate: 30.72e6
>
> Sampling rate: 30.72e6
>
> Carrier frequency: 3.8e9
>
> We use one B210 to transmit time domain samples back to back and 
> others to receive.
>
> Log snippet:
>
> Init PSS detected with lag: /4469/ (/PSS detection offset from the 
> slot boundary/ )
>
> sss has been detected
>
> Init PSS detected with lag: 4469
>
> sss has been detected
>
> Init PSS detected with lag: 4469
>
> sss has been detected
>
> Init PSS detected with lag: 4469
>
> sss has been detected
>
> Init PSS detected with lag: 4470 à1 Ts drift
>
> sss has been detected
>
> Init PSS detected with lag: 4470
>
> sss has been detected
>
> Init PSS detected with lag: 4470
>
> sss has been detected
>
> Init PSS detected with lag: 4471 à1 Ts drift.
>
> sss has been detected
>
> Init PSS detected with lag: 4472à1 Ts drift
>
> sss has been detected
>
> Init PSS detected with lag: 4472
>
> sss has been detected
>
> Init PSS detected with lag: 4472
>
> sss has been detected
>
> Init PSS detected with lag: 4484 à12 Ts drift
>
> sss has been detected
>
> Thanks! in advance.
>
> Regards,
>
> Prasad.
>
>
Are you just using the on-board reference clock, or using something like 
a GPS module?

The drift you show is roughly 0.8PPM (if I've done my math correctly), 
which is well within spec for this board without a better reference clock.




--------------010306050300000107080002
Content-Type: multipart/related;
 boundary="------------060401090708030105020802"


--------------060401090708030105020802
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 12:13 PM, Prasad via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:001b01d65f79$eae66ea0$c0b34be0$@com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
      <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1">
        <p class="MsoNormal"><span style="color:#1F497D">Soft reminder!<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                Prasad
                [<a class="moz-txt-link-freetext" href="mailto:kpras@trilcomm.com">mailto:kpras@trilcomm.com</a>] <br>
                <b>Sent:</b> Monday, July 20, 2020 7:58 PM<br>
                <b>To:</b> '<a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>'<br>
                <b>Cc:</b> 'Rao Yenamandra'<br>
                <b>Subject:</b> 1 Ts delay in USRP B210<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="color:#1F497D">Dear Team.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Hope you are
            doing well and
            safe.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">We are bringing
            up our NR-5G UE
            stack with USRP B210.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">If time
            permits, would you pls.
            reply to below concern with your valuable information. <o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="color:#1F497D">During the
            synchronization
            procedure, we observe atleast </span><!--[if gte msEquation 12]><m:oMath><i><span 
 style='font-family:"Cambria Math","serif";color:#1F497D'><m:r>±</m:r></span></i></m:oMath><![endif]--><!--[if !msEquation]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;position:relative;
            top:2.5pt;mso-text-raise:-2.5pt"><img id="_x0000_i1025"
              src="cid:part1.05060506.03050209@gmail.com" height="17"
              width="11"></span><!--[endif]--><span
            style="color:#1F497D">1 </span><!--[if gte msEquation 12]><m:oMath><m:sSub><m:sSubPr><span 
   style='font-family:"Cambria Math","serif";color:#1F497D;font-style:italic'><m:ctrlPr></m:ctrlPr></span></m:sSubPr><m:e><i><span 
   style='font-family:"Cambria Math","serif";color:#1F497D'><m:r>T</m:r></span></i></m:e><m:sub><i><span 
   style='font-family:"Cambria Math","serif";color:#1F497D'><m:r>s</m:r></span></i></m:sub></m:sSub></m:oMath><![endif]--><!--[if !msEquation]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;position:relative;
            top:2.5pt;mso-text-raise:-2.5pt"><img id="_x0000_i1025"
              src="cid:part2.03040402.07040702@gmail.com" height="17"
              width="13"></span><!--[endif]--><span
            style="color:#1F497D"> (Sampling Time) drift in rx streamer
            in every
             ~40ms time period.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Are we missing
            any time_spec
            during  <i>uhd_rx_streamer_recv</i> api or in <i>uhd_tx_streamer_send</i>
            ?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Master clock
            rate: 30.72e6<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Sampling rate:
              
            30.72e6<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Carrier
            frequency: 3.8e9<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">We use one B210
            to transmit time
            domain samples back to back and others to receive.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Log snippet:<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: <i>4469</i>
            (<i>PSS detection offset from the slot boundary</i> )<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4469<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4469<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4469<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4470
          </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
            style="color:#1F497D"> 1 Ts drift<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4470<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4470<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4471
          </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
            style="color:#1F497D"> 1 Ts drift.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4472</span><span
            style="font-family:Wingdings;color:#1F497D">à</span><span
            style="color:#1F497D">
            1 Ts drift<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4472<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4472<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Init PSS
            detected with lag: 4484
          </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
            style="color:#1F497D"> 12 Ts drift<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">sss has been
            detected<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks! in
            advance.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Prasad.<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Are you just using the on-board reference clock, or using something
    like a GPS module?<br>
    <br>
    The drift you show is roughly 0.8PPM (if I've done my math
    correctly), which is well within spec for this board without a
    better reference clock.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------060401090708030105020802
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part1.05060506.03050209@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAAsAAAARCAYAAAAL4VbbAAAAAXNSR0IArs4c6QAAAAlwSFlz
AAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAGm
SURBVChTnZI9SBxRFIXPe3PfOLo7LIuEgPiXJQRckmrBSrFJQBQr2cImgoWpImIlJAzugKAY
xMbGxkaMhSnSpFAsRFQsRlHBsZIg/hBFFt3dyf7MznPsZJeo8Ta3+TiXe86hRCKBpw49Fbzj
ng8bhsGSlqXNWGBWOJZ7a5vF+5dLlWscebOuVOgiHMNH2Fh5CCbGeIMQKriCytJ/SpVdxpAv
unmVNBTKYMNo4uPDR4FxC2hePQhFqIBsvoDr31fBX2uOnkyG0T8Wx9j7SIbw/aA+5/EZYi6G
pn5o0dog/UkTLlbWvniCPomAg3QS8LX6CT3R44rdo25Xqpgc7KqL0NnOoh1QD9+9GV3/OrFU
yOgIhoEYkCHTtD1UITXYCrS3Ra/Pty+hqQKhxup0b2tVCsgBG3MwN8pDISmhKqTCzUI85saV
ril7CvPEywacl7vR5IQSW4EP0/seZjtH2IuQ+JbKgmUXfr6W+eIrJ6Mg/rkXffHGZd/nyqBk
ssOTHqQ/J5d/Xc4liPuxMMk5mL/cu4Q2ybTZKdfRN9Ci/LuAh/NYNP+zdbendpNSqLWa5QAA
AABJRU5ErkJggg==
--------------060401090708030105020802
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.03040402.07040702@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAA0AAAARCAYAAAAG/yacAAAAAXNSR0IArs4c6QAAAAlwSFlz
AAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAIk
SURBVDhPY2lsbGQgFbCQqgGknjxNdbm5XOmurgyLnmmx/3j+4y8Dw70/DIIgw4yZGN7f++Wy
e/c/22NNP5BdxPLj97PbrDpB7AIKrM/Uef8wf/lmLPDhP+t7AeYvP9mZ1SUUvr18VldXZ93U
1PQLppGFg4VZ6omUxVdpC4uy1ULr87uOSWg9M7fbOdtw/6Ode5Xrn4qziQMVM6HYdOf6y6qN
osqnGy/07LnI+a/4M58+Q5wZKx8XJ9vmL8zMP3Wk2D8BNfxG0bRs78H2RoaDDHV1UWmrJpww
vPj+z5NmToaOpqZDZxkYDp29fwFIogUxIvTevzF5xyokLCMqcnV6U9MZfFEB1/T26Mm399+r
M5jaCQj/uIs/9sCagKGjd3PtEtvrH//9ceFlm44Svlj0Q216bPaFQ9z6FQ/n9/xNbEA/ooL6
+uMsjY2Wf4CGMwNl/rHU1UWwvdizV2bdyZ8M/GJWnNVOP8wY1jAcBWnLy3abPGfCHRsNl09v
1j9V0RA68/lZjglvMNCmR+KnH/y1mn74wQEJ6V8MKqoy8cCIAWt6tP20xUk+XZ2YaqNKQ1aG
P3W7X88GanrO0tR07DFQ3q3AkRNIvWdgODkZ7jY9edY2b66/K7bufpx+z8io/Uyl6AVgyviL
M8Gmq7MHzWQLs0sP4qqSebO67Twj69w9DAxZQBOn49T0/t0Py3v3duXzlF287upqxSQs8Hvh
PwaGZSBnAACn9tFi1/T6uQAAAABJRU5ErkJggg==
--------------060401090708030105020802--

--------------010306050300000107080002--


--===============5120468436278674812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5120468436278674812==--

