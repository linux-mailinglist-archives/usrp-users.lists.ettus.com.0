Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F114952A28F
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 15:03:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E7F8384AD6
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 09:03:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652792631; bh=CYUwD4TFACzaeZFHoHTLBxZ229nvptUk8ieaGTVkQoA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=r+IOcTC9wiY1wvOX7uzPhFXo//sfeSlx90wdRJaEsN8NiwhfoyauVjtGdieWdK/eS
	 uFG4vCckyAkGedUoO/ErIaa6EwwShkxmOzU/mQcVtYEjX8af/JYqjzz7/Yy4oUNY1W
	 1lquv48qvajMuEJnvXN+esIROyHQRCUDXSPOOW6HFBuZhPhoCmvaVA9Tzr9ceM46pz
	 Vjyk6y5/KKp3mZeBnB2xQfK2DyUAWK0AHihXEmAcMl9iyiavSEmYyFEEhXyDOcw29x
	 1w4zj0pNm2+tRY+trAjuRk4I/5Y3SpaQiF2krYCMNy2hMGGTkWLYGolTIdJm67IpxP
	 1qaVYmEsqXKiw==
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2171F3849BB
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 09:02:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=bath-edu.20210112.gappssmtp.com header.i=@bath-edu.20210112.gappssmtp.com header.b="DTfLAgd3";
	dkim-atps=neutral
Received: by mail-wr1-f42.google.com with SMTP id g17so6519799wrb.11
        for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 06:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bath-edu.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject;
        bh=/ToLAnFA3Z6RuTsXil261fD6qR0TYLmf8Zd1pnSoS6o=;
        b=DTfLAgd3ipkSBgPokvBcnN1+0HaOYE9NPzsMLS4PdKq1EcmSF3tdKyNMYnRmIzC4RT
         +SKsC0NkpUfI9N8cBj+H599cDyUPjNHwsgyAF4Ki3pDFy2vXSeNT9gEr/WJNsKd8Lgzj
         5bExaaKLLgLwXDYflu/N58PnAUZJixmcDUXzIgX2gOYZcewPVOVP/8quHWrkSL4gVoTj
         /O/GO5ZXINhqra/Gxo/FG6CKHTVEBOmsVsA6xunFpfEIsKzKZLxiAa6ZlW51dZ2E9BPY
         +7SvUnXxM3ym0nE/+WZ3Towb+Na2DGgBAIUXm5oggR4ouFTUDCv39Z0mwtSUSWZottiy
         s5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject;
        bh=/ToLAnFA3Z6RuTsXil261fD6qR0TYLmf8Zd1pnSoS6o=;
        b=pYCxCsmE4TGnqIdqnno53aOEY20BSGJqVKXTutO246Jbd41C+UgWof5kwDkL/AZju7
         DXZeF6OO+NcB5XtTI/SWilLnnjjcX7Akw+Qr4iHvmIzzPsnjXGDuFIN0jQ80k/8To+bv
         utku5cC12Ii2KZKyjoHRUbeWKbsULVTH2lGVnuPrxhuSSKkPcP0KRfJCMuMuExDP9GsD
         CayZFT/Zfr3C384v82Pq9TOlViLAvwli6Ej2+c5zgotrdC83iHzo5aOQDJMF8Ku9uwRp
         s6GzOy1xbm3VhPI+V467Bfa5Xdc84sfedE64iINni8F26M9w8Qe+95V6xUhBBRBm4699
         6Qpg==
X-Gm-Message-State: AOAM531pXZoL4WvLQqhZ3Dv2n51RFjd3qDgexSEw9RIO6DLtGS7ptVWt
	mpdfIW48kJLR8hc40xK8d+TXtPuwT8eYNw==
X-Google-Smtp-Source: ABdhPJyL3RTmchtR3BgwC5GCG95GOIpsXhRg3O8VnRvk9qAX1EL59W5oOzrm0ptNDxEnmCDVOxt//Q==
X-Received: by 2002:adf:efcd:0:b0:20d:4b7:ef9c with SMTP id i13-20020adfefcd000000b0020d04b7ef9cmr10273605wrp.228.1652792544847;
        Tue, 17 May 2022 06:02:24 -0700 (PDT)
Received: from ?IPV6:2a00:23c7:8313:5701:b553:96df:b323:c9d? ([2a00:23c7:8313:5701:b553:96df:b323:c9d])
        by smtp.gmail.com with ESMTPSA id q29-20020adfab1d000000b0020c66310845sm8184782wrc.55.2022.05.17.06.02.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 06:02:24 -0700 (PDT)
Message-ID: <c85ed6d9-f856-0e0b-2ef7-daa4e5226def@bath.edu>
Date: Tue, 17 May 2022 14:02:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Peter Featherstone <peter.f.j.featherstone@bath.edu>
Message-ID-Hash: KJR7WMAFBHSXP5YKXPR6GQFNP6TWZ2M4
X-Message-ID-Hash: KJR7WMAFBHSXP5YKXPR6GQFNP6TWZ2M4
X-MailFrom: peter.f.j.featherstone@bath.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 : uhd::rx_metadata_t::time_spec wrong when capturing with "sc8" otw format and cpu format
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJR7WMAFBHSXP5YKXPR6GQFNP6TWZ2M4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5517774679317142702=="

This is a multi-part message in MIME format.
--===============5517774679317142702==
Content-Type: multipart/alternative;
 boundary="------------lI2BT1hMFP1dLHyBHxKfmaoo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lI2BT1hMFP1dLHyBHxKfmaoo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I am capturing samples on an E320 with cpu_format 'sc8' and otw_format 
'sc8'.

When calling `uhd::rx_streamer::recv()`, I'm comparing the time_spec 
given by 'uhd::rx_metadata_t' and the timestamp calculated by 
integrating the sample rate with the received samples.

So I have something like this:

... uint64_t total_samples =0; bool is_first_timestamp =true; uhd::time_spec_t first_timestamp; while (total_samples < requested_samples))
{
     uhd::rx_metadata_t md;const size_t nsamples = rx_stream->recv(ptrs, 1024, md, 3, false); if (is_first_timestamp)
     {
         is_first_timestamp =false; first_timestamp = md.time_spec; }
     
     printf("Timestamp %.8lf expected %.8lf\n",
	(md.time_spec - first_timestamp).get_real_secs(), total_samples /  rate); total_samples +=nsamples;}

...

Now when both otw format and cpu format are 'sc8' I get an output like:

Timestamp 0.00000000 expected 0.00000000
Timestamp 0.00047396 expected 0.00094792
Timestamp 0.00094792 expected 0.00189583
Timestamp 0.00142188 expected 0.00284375
Timestamp 0.00189583 expected 0.00379167
Timestamp 0.00236979 expected 0.00473958
Timestamp 0.00284375 expected 0.00568750
Timestamp 0.00331771 expected 0.00663542
Timestamp 0.00379167 expected 0.00758333
Timestamp 0.00426563 expected 0.00853125
Timestamp 0.00473958 expected 0.00947917
Timestamp 0.00521354 expected 0.01042708
Timestamp 0.00568750 expected 0.01137500

...

Can anybody tell me what is going on?


Thanks,


Peter Featherstone


--------------lI2BT1hMFP1dLHyBHxKfmaoo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello all,</p>
    <p>I am capturing samples on an E320 with cpu_format 'sc8' and
      otw_format 'sc8'.</p>
    <p>When calling `uhd::rx_streamer::recv()`, I'm comparing the
      time_spec given by 'uhd::rx_metadata_t' and the timestamp
      calculated by integrating the sample rate with the received
      samples.</p>
    <p>So I have something like this:</p>
    <pre style="background-color:#2b2b2b;color:#a9b7c6;font-family:'JetBrains Mono',monospace;font-size:9.8pt;"><span style="color:#b9bcd1;">...

uint64_t </span>total_samples = <span style="color:#6897bb;">0</span><span style="color:#cc7832;">;
</span><span style="color:#cc7832;">
</span><span style="color:#cc7832;">bool </span>is_first_timestamp = <span style="color:#cc7832;">true;
</span><span style="color:#b5b6e3;">uhd</span>::<span style="color:#b5b6e3;">time_spec_t </span>first_timestamp<span style="color:#cc7832;">;
</span><span style="color:#cc7832;">
</span><span style="color:#cc7832;">while </span>(total_samples &lt; requested_samples))
{
    <span style="color:#b5b6e3;">uhd</span>::<span style="color:#b5b6e3;">rx_metadata_t </span>md<span style="color:#cc7832;">;</span><span style="color:#cc7832;">
</span><span style="color:#cc7832;">    const size_t nsamples </span>= rx_stream<span style="color:#5f8c8a;">-&gt;</span>recv(ptrs<span style="color:#cc7832;">, 1024</span><span style="color:#cc7832;">, </span>md<span style="color:#cc7832;">, </span><span style="color:#6897bb;">3</span><span style="color:#cc7832;">, false</span>)<span style="color:#cc7832;">;
</span><span style="color:#cc7832;"> 
    if </span>(is_first_timestamp)
    {
        is_first_timestamp = <span style="color:#cc7832;">false;
</span><span style="color:#cc7832;">        </span>first_timestamp = md.<span style="color:#9373a5;">time_spec</span><span style="color:#cc7832;">;
</span><span style="color:#cc7832;">    </span>}
    
    printf(<span style="color:#6a8759;">"Timestamp %.8lf expected %.8lf</span><span style="color:#cc7832;">\n</span><span style="color:#6a8759;">"</span><span style="color:#cc7832;">, </span>
	(md.<span style="color:#9373a5;">time_spec </span><span style="color:#5f8c8a;">- </span>first_timestamp).get_real_secs()<span style="color:#cc7832;">, 
	</span>total_samples /<span style="color:#9373a5;"></span> rate)<span style="color:#cc7832;">;

</span><span style="color:#cc7832;">    </span>total_samples += <span style="color:#cc7832;">nsamples</span>;<span style="color:#cc7832;"></span><span style="color:#cc7832;">
</span>}

...
</pre>
    <p>Now when both otw format and cpu format are 'sc8' I get an output
      like:</p>
    <p>Timestamp 0.00000000 expected 0.00000000<br>
      Timestamp 0.00047396 expected 0.00094792<br>
      Timestamp 0.00094792 expected 0.00189583<br>
      Timestamp 0.00142188 expected 0.00284375<br>
      Timestamp 0.00189583 expected 0.00379167<br>
      Timestamp 0.00236979 expected 0.00473958<br>
      Timestamp 0.00284375 expected 0.00568750<br>
      Timestamp 0.00331771 expected 0.00663542<br>
      Timestamp 0.00379167 expected 0.00758333<br>
      Timestamp 0.00426563 expected 0.00853125<br>
      Timestamp 0.00473958 expected 0.00947917<br>
      Timestamp 0.00521354 expected 0.01042708<br>
      Timestamp 0.00568750 expected 0.01137500</p>
    <p>...</p>
    <p>Can anybody tell me what is going on?</p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p><br>
    </p>
    <p>Peter Featherstone</p>
    <p><br>
    </p>
  </body>
</html>

--------------lI2BT1hMFP1dLHyBHxKfmaoo--

--===============5517774679317142702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5517774679317142702==--
