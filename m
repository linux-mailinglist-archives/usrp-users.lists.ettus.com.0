Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5838619325
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 22:00:28 +0200 (CEST)
Received: from [::1] (port=41584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOpDP-0000bm-4J; Thu, 09 May 2019 16:00:27 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:37563)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOpCq-0000BU-Mj
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 16:00:22 -0400
Received: by mail-qt1-f172.google.com with SMTP id o7so4022587qtp.4
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 12:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=bNXFx0XcJsXqxccOTJJLcQjq64TdGTzLIKWBmrbse+Q=;
 b=Kv0t6U4RR6z5W178s1lAC0Z3xRVXWc37uVn8/6NArP4zuSaR7D3Ee15WgfY7z8Pc74
 sGrKhp7yqHH6jTtSP23XGbZMB0iU5naS08+VGmq97xhBI/2bx4NWqXFS1/bd+Ui61vS+
 oEWnR3YKJ763rOVqbH43mqIN41EDwpuk3l+otOaEn0KvtJ68qVZuyo2AiEKOSjcHh0WB
 pe+pvkZlmnAoV9hWC/xR6En3SItbB2IRrevUN3aq+zR4aAEwMfv8RWZ3hqNuQUPYmoMl
 mCjA2PW+q0Og4tUFdIK5qpSxq6jBmQfCh/JcQMB3mA5XP7E4pPsL1XiYcA2djeShBv1K
 gwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=bNXFx0XcJsXqxccOTJJLcQjq64TdGTzLIKWBmrbse+Q=;
 b=o4rZ+vU9yjXpIilrtTSZWfzTXrkUlssnCChpvPB2xyPX9JLGGO0B8+GPz5Vdi/wwfY
 b9creh7XCWUclPkeR4ArQM9xeh4ws4axuW76qX5yBgVhbXj+Ioe4oAEblOXWazr5EyXE
 NpF1z6WfSm+MjJm9z0824aeeWUahDayFdxek0QYUGrZJAYtVqVt/nDKqWUell7Vhv2Hy
 hAm90qouMiMn3h3oCnYqIYtQy/oD7KFo9dvx0dWBPvTqpRUNvXebA8xDZ0WjlLDiMMvo
 odwLtisIaionqDZHgLZ/gqbAZ4Z2C2cI8QwHYReiwD8Wn4u9AIs29BO5MAxjmdw5fwqZ
 50Rw==
X-Gm-Message-State: APjAAAVbuuiyVno9uOQJtvnZSOW09CetGOMUmhD8QzWbyvbh7lioEG0m
 8sLzlqAKsp/2s/dkIAkMrR44lAVy5UY=
X-Google-Smtp-Source: APXvYqxEgGh65ICj8l2+wRfzvJerQUnAwhSuk6f26VewemO0nAHsYaCqqy+j998ib7wItDoQsGWlyg==
X-Received: by 2002:ac8:4a84:: with SMTP id l4mr5682185qtq.374.1557431952012; 
 Thu, 09 May 2019 12:59:12 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id t124sm1516648qkh.29.2019.05.09.12.59.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 12:59:11 -0700 (PDT)
Message-ID: <5CD4868E.6030808@gmail.com>
Date: Thu, 09 May 2019 15:59:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
 <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
 <004a01d505f9$c7b437d0$571ca770$@sysware.com>
 <CAEXYVK6A1rF0xvNNAi5HsBjpVFdfQw=aekVP4OU++Zby9+ov=g@mail.gmail.com>
 <00ba01d50689$0fe41630$2fac4290$@sysware.com>
 <CAEXYVK65edB=XQnAokDuCfxj7tABXVOzHJOiOY-Ew-U9NU8ORQ@mail.gmail.com>
In-Reply-To: <CAEXYVK65edB=XQnAokDuCfxj7tABXVOzHJOiOY-Ew-U9NU8ORQ@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 05/09/2019 03:01 PM, Brian Padalino via USRP-users wrote:
>
> I'd much prefer to see an IQ constellation diagram.  For OFDM it'll 
> just look like a big Gaussian meatball unless you hit some clipping or 
> weirdness, then you'll see it square up or look strange.
>
> Brian
>
If "Big Gaussian Meatball" isn't the title of someone's next album, it 
really should be :) :)



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
