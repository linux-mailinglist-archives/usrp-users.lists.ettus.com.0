Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B53F7BE0EF
	for <lists+usrp-users@lfdr.de>; Wed, 25 Sep 2019 17:12:12 +0200 (CEST)
Received: from [::1] (port=38192 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iD8xY-00052j-Sz; Wed, 25 Sep 2019 11:12:04 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:45674)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iD8xU-0004vn-8N
 for usrp-users@lists.ettus.com; Wed, 25 Sep 2019 11:12:00 -0400
Received: by mail-qk1-f174.google.com with SMTP id z67so5530471qkb.12
 for <usrp-users@lists.ettus.com>; Wed, 25 Sep 2019 08:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=HDrxnuY2My6p8g0huTF4hZYka6KctDrYkyBHX4FvJhY=;
 b=G1mvviklIuqYA/MfGtdQQybeObWt2czpMFFoJimfc3BlJezCbyMhZqmhgLCUn0a/oW
 hmzI06n9PIkGlt20wbs3aDBcpzSxPQH5EBapEWpRKwRQ1PoSKMWzJlcgYfHFskAyLyjn
 u4Qnb5/ySdgip+2PjDvT33ZMgK/ejdaskv8JHeUoLPkPh5zbNNreH+PpJulqIkUI8bEF
 lKcUAK12a4cSvyYqRPoPFCbgmbB20I+xFzRPqVtDids2wXBXoN05q26hjNZQ/KBKy0Ok
 JphYOLRRoMO8spn8u5laadQgH9+Mv7QuaPSNrPHhcXt3kxmZ9ad19dVUO1pqP5Xrj8wh
 PGwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=HDrxnuY2My6p8g0huTF4hZYka6KctDrYkyBHX4FvJhY=;
 b=CiXXOzWX2XYZYRYeP5rd/xx+jUwx314HzqZKCVUuHpEVECuwbDnkBEAeGaXhIQ/L3U
 t9sdCNUuuJ9o7kpIEbneCxdRBs6ld2c8I33m6cNQ3mySAWRbi4c2PUkK7mmPElnjex9R
 zEcbJxoqdO+XGVr9yXLIyVn2V+Qo2s/alPSrE95rTVeBwPA7wjYNjYffyY28oN9E036V
 DurO0T2Xs28zR9fyxrsRV0PoWI7xb7Fm67Gra5a60VmkyasnRSeZ8/hx9Pv94ErvL+2r
 GrZJplA6Y0pZUl43snq7WhdOnD4HQQ2Z+LGLaLBEdTi9dlXTdMDfqXzWDa7sA8Mxf6y2
 ebBg==
X-Gm-Message-State: APjAAAWLlzDEgr0+D12BvPs6akXE5QFcN9gNPEhdDgAMoaSenfi6ThSQ
 7ZTrYw4Fv7ftX0RtAVs4sBcy1PLO
X-Google-Smtp-Source: APXvYqwxIa5+78k62QQaWNEVYuh2zqb49hieVoAJ00UPDPRPW3KFD5HawVIhlpc/1+adA39Cw0wgGw==
X-Received: by 2002:a37:8547:: with SMTP id h68mr3981702qkd.219.1569424279383; 
 Wed, 25 Sep 2019 08:11:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id u39sm3299448qtj.34.2019.09.25.08.11.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 08:11:18 -0700 (PDT)
Message-ID: <5D8B8396.9080206@gmail.com>
Date: Wed, 25 Sep 2019 11:11:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
In-Reply-To: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
Content-Type: multipart/mixed; boundary="===============3769808914115033023=="
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
--===============3769808914115033023==
Content-Type: multipart/alternative;
 boundary="------------040008030909010508020003"

This is a multi-part message in MIME format.
--------------040008030909010508020003
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/25/2019 05:16 AM, Cherif Diouf via USRP-users wrote:
> Hello,
> I am working with the X310 USRP. I have two identical custom blocks 
> feeding the RF frontends.
>
> flowchart
> -----------------
> HW Block1 -> RF0-TX1 |---<
> HW Block2 -> RF1-TX1 |---<
>
> The system is synchronized to an external PPS reference. The sampling 
> rate is 200 MSps and the signal bandwidth is 160 MHz for both channels.
> The two HW blocks start transmitting at the exactly same time. Time 
> resolution is 5ns.
> In most cases the two outgoing RF signals present a 1ns time offset. 
> Which can be understood as a phase offset.
>
> But From time to time there is a 6ns delay between the channels. I 
> assume this 6ns comprises the 1ns delay due to phase offset + 5 ns 
> delay due to misalignment of outgoing samples.
>
> What could be the origin of this one sample misalignement? Is it a way 
> to fix it? Or working close to the limits of the device should such 
> behavior be expected?
>
> Thanks in advance
>
> Best Regards
> Cherif
>
>
You're going to have to share more about your configuration, including:

     - what daughtercards are you using in your X310?
     - what do you mean by "hardware block" -- RFNoC?   Is this a custom 
block?
     - Are you doing this with Gnu Radio or just UHD?
     - What version of UHD are you running?




--------------040008030909010508020003
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/25/2019 05:16 AM, Cherif Diouf
      via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        color: rgb(0, 0, 0); font-family: Calibri, Helvetica,
        sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color
        Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,
        &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;,
        EmojiSymbols;">
        <div class="x_WordSection1" style="font-family: Helvetica,
          serif, &quot;EmojiFont&quot;; font-size: 12px; font-style:
          normal; font-weight: normal; letter-spacing: normal;
          text-align: start; text-indent: 0px; text-transform: none;
          white-space: normal; word-spacing: 0px;">
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            Hello,</div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
             </div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">I am working with the X310 USRP.
              I have two identical custom blocks feeding the RF
              frontends.
              <br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">flowchart</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">-----------------<br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">HW Block1 -&gt; RF0-TX1 |---&lt;</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><span class="" lang="EN-GB"><span
                  class="" lang="EN-GB">HW</span> Block2 -&gt; RF1-TX1</span>
              |---&lt;<br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">The system is synchronized to an
              external PPS reference.
              <span class="" lang="EN-GB">The sampling rate is 200 MSps
                and the signal bandwidth is 160 MHz for both channels.</span><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">The two HW blocks start 
              transmitting at the <span class="" lang="EN-GB">
                <span class="" lang="EN-GB">exactly</span></span> same
              time. Time resolution is 5ns.</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"> </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">In most cases the two outgoing
              RF signals present a 1ns time offset. Which can be
              understood as a phase offset.<br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">But From time to time there is a
              6ns delay between the channels. I assume this 6ns
              comprises the 1ns delay due to phase offset + 5 ns delay
              due to misalignment of outgoing samples.</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">What could be the origin of this
              one sample misalignement? Is it a way to fix it? Or
              working close to the limits of the device should such
              behavior be expected?</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">Thanks in advance<span class=""
                lang="EN-GB"></span><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"><br>
            </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB"> </span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">Best Regards</span></div>
          <div class="" style="margin: 0cm 0cm 0.0001pt; font-size:
            11pt; font-family: Calibri, sans-serif, serif,
            &quot;EmojiFont&quot;;">
            <span class="" lang="EN-GB">Cherif</span></div>
        </div>
        <br>
      </div>
      <br>
    </blockquote>
    You're going to have to share more about your configuration,
    including:<br>
    <br>
        - what daughtercards are you using in your X310?<br>
        - what do you mean by "hardware block" -- RFNoC?   Is this a
    custom block?<br>
        - Are you doing this with Gnu Radio or just UHD?<br>
        - What version of UHD are you running?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040008030909010508020003--


--===============3769808914115033023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3769808914115033023==--

