Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4F852A4E6
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 16:31:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB18938520B
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 10:31:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652797912; bh=M8tlQGSa3ZSMDFQZdx8OK+Ap40bBNvqLZBwzoK0N5x4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=or99mwxmEu0fnojgPJ6M42k2Xo2tMRnezlI9izDjyLTM1gbD0rwGacYpMSRRL3Qis
	 vO/bpARxkXmwGH3wD430slF8Jy1DmiL5iHGTBO63Ml/bnyJc2+HgwIIeasKHLgGMZR
	 DiPL5b8yGFYyG4FJgKS+14GZMPYpSgvhFa3btEIrHjp2CSDlOjKDVi7sIWxaMBCb/g
	 jlzsU3+RbKfgy1Kc4nMntRjd8JrGNSukK5yGuerKMGXDGs2wOaQPsSbFKLdRFMTsY9
	 8HjmdK1SOLyAq3RoeGb0h1saLc5xjhhTWpy48fum76NdmVxvT1k4oWNMWlpvDZb22t
	 OrsDp5YWCrr0g==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 685AD384B0E
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 10:30:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HRMlmXU3";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id s22so8723249qta.0
        for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 07:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=lqARYfsl9DU6/bKUkvmIkN/zr4//YA9WD/GmxbQIzII=;
        b=HRMlmXU36UoeFfQJfXmYXwficHveflV6sf7P8X+HPthwVxe24C0Gy0WWqXgYZ2q7oT
         SEMxlbjJAxEVgFPPyvTy+nUS5a2YQiGLN3YT68OOSWr1iDNTRznWkKkqzaH/X/mayD2K
         dbF+//UouN5zOGXMneuYxySt7DniZpmctaTCFIsF7+zMer1WjooqCSrq9VD/UYyaVHWw
         Sz638PRk+nf6xEWfact5CQuGuto5whN+ezkimHnCPudtpqGR2Hzqsm8HB4EKlamRHtO5
         fC5l9eH/Z7/j8B0oJxQe96DWxYpnqOjoh6kYWEf7hYbJn2Dz31jnwNQvwgGromSqer9h
         9P/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=lqARYfsl9DU6/bKUkvmIkN/zr4//YA9WD/GmxbQIzII=;
        b=hFnaOVEEFx7tXUfI/jOmMUGKNPuz4uoT65PyjEsBjUYWMyyCFAN/+iW2TEOUqJEFRd
         oFKnpOX4ROJ6j5VyNP2RGRpItl4SKb1Qmur2xuf6UrKWT/KVbbak9PTryphWKCsz6vHi
         e/VhhVJ3103TpvVsyD1fzplSz/7NSNlmqSFJ+zTMWC0dCKDEM0pDqVFg9ZPGNEnvatcX
         y/C4SkWJzywcFmO8V5MpiYw2R0V0PAnlEyRx+ZJ4/xr7QpGv6fOOZ9E45IrwwEYkNXmt
         r8TK/kkdmVsd8ovwG1SDLV6Yl+CsM7Qan8xdnNl1nra2b2WtmfkZ7POVcGh3vIpuQKcu
         hp+w==
X-Gm-Message-State: AOAM532wHZICYsHy79N8stQ5P1P0IxHzbpBSQiPInTsY3nDKFmRzXhE/
	eXyIU1P01lummP2TNV3JW+rOEJlK3NQ=
X-Google-Smtp-Source: ABdhPJwVKRzNzgAX2LXCSSsLzO699rSAOvE+jgsleWpwun6dDQ7sT+kpJAsDeczuVM0o5WZutEnl/A==
X-Received: by 2002:ac8:5e0b:0:b0:2f3:c8c6:da87 with SMTP id h11-20020ac85e0b000000b002f3c8c6da87mr20051206qtx.130.1652797820611;
        Tue, 17 May 2022 07:30:20 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id a5-20020a05620a066500b0069fc13ce21csm7639408qkh.77.2022.05.17.07.30.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:30:20 -0700 (PDT)
Message-ID: <666db3c7-68ef-c9c3-d055-961371a67159@gmail.com>
Date: Tue, 17 May 2022 10:30:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <c85ed6d9-f856-0e0b-2ef7-daa4e5226def@bath.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c85ed6d9-f856-0e0b-2ef7-daa4e5226def@bath.edu>
Message-ID-Hash: JMTEFHBG2NDUEELZU35C3TYQTTU2IZOX
X-Message-ID-Hash: JMTEFHBG2NDUEELZU35C3TYQTTU2IZOX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 : uhd::rx_metadata_t::time_spec wrong when capturing with "sc8" otw format and cpu format
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMTEFHBG2NDUEELZU35C3TYQTTU2IZOX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2295202800364913875=="

This is a multi-part message in MIME format.
--===============2295202800364913875==
Content-Type: multipart/alternative;
 boundary="------------DejtmTWJb3adymfYMpnBsk4Q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DejtmTWJb3adymfYMpnBsk4Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-17 09:02, Peter Featherstone wrote:
>
> Hello all,
>
> I am capturing samples on an E320 with cpu_format 'sc8' and otw_format=20
> 'sc8'.
>
> When calling `uhd::rx_streamer::recv()`, I'm comparing the time_spec=20
> given by 'uhd::rx_metadata_t' and the timestamp calculated by=20
> integrating the sample rate with the received samples.
>
> So I have something like this:
>
> ... uint64_t total_samples =3D0; bool is_first_timestamp =3Dtrue; uhd::=
time_spec_t first_timestamp; while (total_samples < requested_samples))
> {
>      uhd::rx_metadata_t md;const size_t nsamples =3D rx_stream->recv(pt=
rs, 1024, md, 3, false); if (is_first_timestamp)
>      {
>          is_first_timestamp =3Dfalse; first_timestamp =3D md.time_spec;=
 }
>     =20
>      printf("Timestamp %.8lf expected %.8lf\n",
> 	(md.time_spec - first_timestamp).get_real_secs(), total_samples /  rat=
e); total_samples +=3Dnsamples;}
>
> ...
>
> Now when both otw format and cpu format are 'sc8' I get an output like:
>
> Timestamp 0.00000000 expected 0.00000000
> Timestamp 0.00047396 expected 0.00094792
> Timestamp 0.00094792 expected 0.00189583
> Timestamp 0.00142188 expected 0.00284375
> Timestamp 0.00189583 expected 0.00379167
> Timestamp 0.00236979 expected 0.00473958
> Timestamp 0.00284375 expected 0.00568750
> Timestamp 0.00331771 expected 0.00663542
> Timestamp 0.00379167 expected 0.00758333
> Timestamp 0.00426563 expected 0.00853125
> Timestamp 0.00473958 expected 0.00947917
> Timestamp 0.00521354 expected 0.01042708
> Timestamp 0.00568750 expected 0.01137500
>
> ...
>
> Can anybody tell me what is going on?
>
>
> Thanks,
>
>
> Peter Featherstone
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Does this only happen with sc8/sc8?=C2=A0=C2=A0 Do you get any startup wa=
rnings=20
about missing converters?


--------------DejtmTWJb3adymfYMpnBsk4Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-17 09:02, Peter Featherston=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c85ed6d9-f856-0e0b-2ef7-daa4e5226def@bath.edu">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello all,</p>
      <p>I am capturing samples on an E320 with cpu_format 'sc8' and
        otw_format 'sc8'.</p>
      <p>When calling `uhd::rx_streamer::recv()`, I'm comparing the
        time_spec given by 'uhd::rx_metadata_t' and the timestamp
        calculated by integrating the sample rate with the received
        samples.</p>
      <p>So I have something like this:</p>
      <pre style=3D"background-color:#2b2b2b;color:#a9b7c6;font-family:'J=
etBrains Mono',monospace;font-size:9.8pt;"><span style=3D"color:#b9bcd1;"=
>...

uint64_t </span>total_samples =3D <span style=3D"color:#6897bb;">0</span>=
<span style=3D"color:#cc7832;">;
</span><span style=3D"color:#cc7832;">
</span><span style=3D"color:#cc7832;">bool </span>is_first_timestamp =3D =
<span style=3D"color:#cc7832;">true;
</span><span style=3D"color:#b5b6e3;">uhd</span>::<span style=3D"color:#b=
5b6e3;">time_spec_t </span>first_timestamp<span style=3D"color:#cc7832;">=
;
</span><span style=3D"color:#cc7832;">
</span><span style=3D"color:#cc7832;">while </span>(total_samples &lt; re=
quested_samples))
{
    <span style=3D"color:#b5b6e3;">uhd</span>::<span style=3D"color:#b5b6=
e3;">rx_metadata_t </span>md<span style=3D"color:#cc7832;">;</span><span =
style=3D"color:#cc7832;">
</span><span style=3D"color:#cc7832;">    const size_t nsamples </span>=3D=
 rx_stream<span style=3D"color:#5f8c8a;">-&gt;</span>recv(ptrs<span style=
=3D"color:#cc7832;">, 1024</span><span style=3D"color:#cc7832;">, </span>=
md<span style=3D"color:#cc7832;">, </span><span style=3D"color:#6897bb;">=
3</span><span style=3D"color:#cc7832;">, false</span>)<span style=3D"colo=
r:#cc7832;">;
</span><span style=3D"color:#cc7832;">=20
    if </span>(is_first_timestamp)
    {
        is_first_timestamp =3D <span style=3D"color:#cc7832;">false;
</span><span style=3D"color:#cc7832;">        </span>first_timestamp =3D =
md.<span style=3D"color:#9373a5;">time_spec</span><span style=3D"color:#c=
c7832;">;
</span><span style=3D"color:#cc7832;">    </span>}
   =20
    printf(<span style=3D"color:#6a8759;">"Timestamp %.8lf expected %.8lf=
</span><span style=3D"color:#cc7832;">\n</span><span style=3D"color:#6a87=
59;">"</span><span style=3D"color:#cc7832;">, </span>
	(md.<span style=3D"color:#9373a5;">time_spec </span><span style=3D"color=
:#5f8c8a;">- </span>first_timestamp).get_real_secs()<span style=3D"color:=
#cc7832;">,=20
	</span>total_samples /<span style=3D"color:#9373a5;"></span> rate)<span =
style=3D"color:#cc7832;">;

</span><span style=3D"color:#cc7832;">    </span>total_samples +=3D <span=
 style=3D"color:#cc7832;">nsamples</span>;<span style=3D"color:#cc7832;">=
</span><span style=3D"color:#cc7832;">
</span>}

...
</pre>
      <p>Now when both otw format and cpu format are 'sc8' I get an
        output like:</p>
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
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Does this only happen with sc8/sc8?=C2=A0=C2=A0 Do you get any startu=
p
    warnings about missing converters?<br>
    <br>
    <br>
  </body>
</html>

--------------DejtmTWJb3adymfYMpnBsk4Q--

--===============2295202800364913875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2295202800364913875==--
