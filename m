Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB2852186B
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 15:32:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB2F6381920
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 09:32:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652189540; bh=Sj1IYzT2m+sDlES47qqQhN6Uw4HlfDv8B/baTnMqZ14=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tmTTf7l417JycAhirX9ZarQqIdE0wiBTISEqZ3xaQ3xp9A/4dX4kLWGgdBTR2IZIh
	 TKsXEINm53iYlUqw4ksnqZlBPmMJaaw34OyYEdSXqHftKCoyRdtplldVAmfoDO3KT+
	 6IYAqiT26Mq/ilAQdOj2h9G7te0UavREo0b/mCBvJCZ7YiRuK7TExqanKQLnOgi2PN
	 1H7xn6ezeE4gHOHBQ4V6/r4hvRub7vYlrQ7MQPmWjNOAPhLQPUzL2l/NNwEZwvA9i1
	 xY98CZoXJN49GIB/dKOb6Mcuo1NvzM/t0uf8X76DF3n6Eql4gLWBCra6mGgxV8z+3+
	 H1jnHX/DcKoOw==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id F3EC138485B
	for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 09:31:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UsQ+Svib";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id y3so13500543qtn.8
        for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 06:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=808xI9j76iL3YGdmvy639L+/QYuxo5tuIK3aioA+fI8=;
        b=UsQ+Svib70+5TLTplR7tPpCHicOso2WQxUmsZtwMsGKprrxWWu6PYSB8tJfayi0vCj
         1HjUvcSNe+ilRAJXqSwZhh3zVr4TLD2iQJT0zlGY87gFw21XfjYFUPqE/8HT1g0aYeAN
         ZelyAK1ibs8QzbS1YpHnA6/vVCTbTrLOY1zwLBzJDwv/XYx7tk/QNDTYFEHNxJ4qki9t
         LACCW215gBxHv2rLAUL6jED9/IMOs+4YA+xr8RLD2ITvoSgsLBYhNjthU/jvpj2fgHi3
         pz39dORuYmzgSy4FEr5yLMtr6Mj3ifyp2mMoPJud2h3O+SPEPmxSeJqlrAu85mbT+HH4
         ePqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=808xI9j76iL3YGdmvy639L+/QYuxo5tuIK3aioA+fI8=;
        b=aGQCu2WxZFmvUHT6qy5pIsZlhMDWRsZdoqf+NvEobuz7ZKC/akyfS0o1MNVOikW6xX
         9wux4BxlBIKel/O4ycXnlsNwOZmYxcllKA1lp5xpePVGSdnq/ebQupJn8FPr+skZYIt9
         EImCLdd72BpsMSXJibhrsH67kvtlaaRIq1Rx8pVHlB8j9B1M696pHWQDJUHwQlmCEP8r
         nwbNehzcAe0DNAroTxbzzQUFbiYn2lXH7hc91F9boH6qUWvjRWTlVg+uVblFlhTJg546
         Jb/UgLPXGLef2ousHMcJfUKstM/2X5XgRFA9u0M/H6q6GDmTBZuW0h7raMSmS64Z4t+D
         fJqA==
X-Gm-Message-State: AOAM5329qGDZsE6HaH8lZAHk+hrIbS3wH68o93ZsyGvpq886VWvuP8z2
	EIflm+vmYDUzRNIfL/Gy2M+sDIktvi4=
X-Google-Smtp-Source: ABdhPJxVyXrkdaPNqK16aCepbQMseplSohRNC7zVm0FQlVnWLflAnvF5s9jdBj5fOZf+vdJKB/63lg==
X-Received: by 2002:a05:622a:648:b0:2f3:ca9f:8497 with SMTP id a8-20020a05622a064800b002f3ca9f8497mr18101256qtb.503.1652189468113;
        Tue, 10 May 2022 06:31:08 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p5-20020ac84085000000b002f39b99f67esm9743844qtl.24.2022.05.10.06.31.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 06:31:07 -0700 (PDT)
Message-ID: <ef0cdfb2-063d-58eb-2e4f-89944de01f3e@gmail.com>
Date: Tue, 10 May 2022 09:31:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHKPiO7qBCWe3LV0yBEn-G4D9mmJ7phYecwYXenq_uTdC7XupA@mail.gmail.com>
 <CAHKPiO6cVHJbYQi4mN+gocbVAOYwFqM6=oQ3neiyGk9obkFc9g@mail.gmail.com>
 <CAFche=h2zUeQnNMaf-LWCQrYtfmNA8b9Xsz-vdREHjti7npt9Q@mail.gmail.com>
 <d248eb66-fe86-0491-0faa-d4812b8de069@obspm.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d248eb66-fe86-0491-0faa-d4812b8de069@obspm.fr>
Message-ID-Hash: MYJODNTOT6BIUH67XXTYSOMNEQRACLNP
X-Message-ID-Hash: MYJODNTOT6BIUH67XXTYSOMNEQRACLNP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom block not working properly
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MYJODNTOT6BIUH67XXTYSOMNEQRACLNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5770994429268641475=="

This is a multi-part message in MIME format.
--===============5770994429268641475==
Content-Type: multipart/alternative;
 boundary="------------t6HqRKMRPW0mzcjLzlsedQel"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------t6HqRKMRPW0mzcjLzlsedQel
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-05-10 08:48, Maxime.Dupont@obspm.fr wrote:
>
> Hi,
>
> I followed the tutorial "Getting started with RFNoc4" for making the 
> demo block as suggested in the tutorial. I am working with uhd version 
> 4.2 and a x310
>
> I can build a FPGA image with the OOT block just fine and I get the 
> expected uhd_usrp_probe output:
>
>     |     _____________________________________________________
>     |    /
>     |   |       RFNoC blocks on this device:
>     ...
>     |   |   * 0/Block#0
>     ...
>     |     _____________________________________________________
>     |    /
>     |   |       Static connections on this device:
>     ...
>     |   |   * 0/SEP#4:0==>0/Block#0:0
>     |   |   * 0/Block#0:0==>0/SEP#4:0
>     ...
>
> I succeed in creating my own RFNoc demo block using modtool but 
> actually working with it with the cpp file in the app/ directory fails.
>
> Even after modifying most of the CMakefiles files inthe example 
> directory (replacing "gain" by "demo") I reach the point where I get 
> the following error:
>
> Error: LookupError: This device does not have a block of type 
> rfnoc::demo::demo_block_control with ID: 0/Demo#0
>
> So my questions are how can I make my process detect my demo block? 
> What should I change in my uhd lib and include if there is a need to? 
> And is there maybe a full tutorial delving into the process of making 
> and driving a custom block using c++?
>
> Thanks in advance
> Maxime
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
There are slides from the RFNOC 4 Workshop at GRCon 2020:

https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part<X>.pdf

THere's also the YT video of the workshop here:

https://www.youtube.com/watch?v=M9ntwQie9vs

These may "fill in the gaps".




--------------t6HqRKMRPW0mzcjLzlsedQel
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-05-10 08:48,
      <a class="moz-txt-link-abbreviated" href="mailto:Maxime.Dupont@obspm.fr">Maxime.Dupont@obspm.fr</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d248eb66-fe86-0491-0faa-d4812b8de069@obspm.fr">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Hi, <br>
      </p>
      <p>I followed the tutorial "Getting started with RFNoc4" for
        making the demo block as suggested in the tutorial. I am working
        with uhd version 4.2 and a x310<br>
      </p>
      <p>I can build a FPGA image with the OOT block just fine and I get
        the expected uhd_usrp_probe output:</p>
      <pre>   |     _____________________________________________________
   |    /
   |   |       RFNoC blocks on this device:
   ...
   |   |   * 0/Block#0
   ...
   |     _____________________________________________________
   |    /
   |   |       Static connections on this device:
   ...
   |   |   * 0/SEP#4:0==&gt;0/Block#0:0
   |   |   * 0/Block#0:0==&gt;0/SEP#4:0
   ... </pre>
      <p>I succeed in creating my own RFNoc demo block using modtool but
        actually working with it with the cpp file in the app/ directory
        fails.</p>
      <p>Even after modifying most of the CMakefiles files inthe example
        directory (replacing "gain" by "demo") I reach the point where I
        get the following error:</p>
      <p>Error: LookupError: This device does not have a block of type
        rfnoc::demo::demo_block_control with ID: 0/Demo#0<br>
      </p>
      <p>So my questions are how can I make my process detect my demo
        block? What should I change in my uhd lib and include if there
        is a need to? And is there maybe a full tutorial delving into
        the process of making and driving a custom block using c++?</p>
      <p>Thanks in advance<br>
        Maxime<br>
      </p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    There are slides from the RFNOC 4 Workshop at GRCon 2020:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part">https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part</a>&lt;X&gt;.pdf<br>
    <br>
    THere's also the YT video of the workshop here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://www.youtube.com/watch?v=M9ntwQie9vs">https://www.youtube.com/watch?v=M9ntwQie9vs</a><br>
    <br>
    These may "fill in the gaps".<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------t6HqRKMRPW0mzcjLzlsedQel--

--===============5770994429268641475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5770994429268641475==--
