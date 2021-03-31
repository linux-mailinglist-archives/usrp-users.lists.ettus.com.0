Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FA4350111
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 15:19:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0967838396B
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 09:19:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nzmvMGpL";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EB023838A3
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 09:19:22 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id 7so19238308qka.7
        for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 06:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=Z+MA2GRmt53SkE/oQzSlYufgjc+eyUCPaI4ArzZ+XtA=;
        b=nzmvMGpLoJmeWGm66PP19Bb4HAVxxG58fE/ndtuCF2QFoRtvMd4jpOzW+g5HHtqwwK
         KTIvBKmvbi43EerWn4CeEdaBmB9jBMfK0I1KpLg5aBIpwTuxpAuwjibhzJGDcwVGl0Mg
         83nEY+agoA2kuCZIgl8Z6mB1DxIZ1WYgMZhcUhOh+X5jRRNI0LWlbZMFXAufyfcNlDtW
         4dVT3DxqEw2+pIqRImi8INdGgMpTkBABWJ+YAlQjL3SUbz+lieJ3VCyN0kv2bB/sCCjC
         vZsa70zGtBLSmrZHnG+Lfg2iU+p6zvH6JPHrnHX2rt08meT5YuL9z5KbtVO9Bqh/pN3v
         WNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=Z+MA2GRmt53SkE/oQzSlYufgjc+eyUCPaI4ArzZ+XtA=;
        b=aKpyMGz6EQ5Ns9Vaz4ClcZKV34zkec3FLlVdEyD2qx4c/ZPwtfYKa0sUOL04wYgUS3
         9FwRuJnWSlfsEAKJQRPAB2HZIfEwHTisEACIr1220DDUJLhHziremd8BMOZ2posfj7/h
         ScYrlOKKOz4aEbs0Re9ykATzNg8SXWIoxJ4BCVFYqVsJA9PabejLGb0Ln0lsuX9Mc8BZ
         e44Nbc/f87oXeGxzCHH0Qw0lKgKlFdAe+vidWkMBqdwqINQoZtb/ZDfuI5PMdN/APcEn
         JHALcT7CdPsyt2UtKIsJRy5XLlGKs3fwh3cV6rStF9lR+jruXSp7LstjpG+nyGyFooy3
         2TTg==
X-Gm-Message-State: AOAM532h+pmwJ8Ailh4QhtthWjvP77DOO/gplU7a5ggcfY9I0UMIdJZA
	lY2Ftk6kbsAMUNpdOcj4RabWSm74h10=
X-Google-Smtp-Source: ABdhPJxNwdAwmNXcp4CLYRlbJEHUC0Znd8YedNRYGEbA16Vrdn45yZ6dq2MAKDaL9UTE642Obl3z6g==
X-Received: by 2002:a05:620a:12da:: with SMTP id e26mr2859823qkl.92.1617196761453;
        Wed, 31 Mar 2021 06:19:21 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j12sm1317410qtn.36.2021.03.31.06.19.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 06:19:20 -0700 (PDT)
Message-ID: <606476D8.4060406@gmail.com>
Date: Wed, 31 Mar 2021 09:19:20 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACDReSyg26P8Cae3Lr5k1s0YJYJ6sSxiYcw4eU=bb2HWkfMQxA@mail.gmail.com>
In-Reply-To: <CACDReSyg26P8Cae3Lr5k1s0YJYJ6sSxiYcw4eU=bb2HWkfMQxA@mail.gmail.com>
Message-ID-Hash: YUI2SPZDKSTY4HFRDBTM5AXY5YINNVNH
X-Message-ID-Hash: YUI2SPZDKSTY4HFRDBTM5AXY5YINNVNH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUI2SPZDKSTY4HFRDBTM5AXY5YINNVNH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 03/31/2021 06:49 AM, Ofer Saferman wrote:
> Hello,
>
> I have a system that uses 4 USRP E310 units.
> Each unit is connected to a GPS antenna.
> Time source is set to gpsdo.
>
> I run the same software remotely on all 4 units from a PC. Software 
> runs on the units themselves.
> I print out messages to show if the reference is locked and the GPS is 
> locked and also what is the GPS time that each unit was synchronized to.
> In some cases the units synchronize to the same GPS time and in other 
> cases there is 1 second difference between GPS time of different units 
> thus causing the units to be unsynchronized.
>
> I was wondering how this was possible.
> The synchronization process (documented by others in the past on the 
> mailing list) is:
> * Wait for ref and GPS lock
> * Wait for a pps edge (get_time_last_pps)
> * Read gps_time value
> * Sync system clock to GPS clock on next PPS edge (set_time_next_pps + 
> 1.0 sec)
>
> Something similar is also implemented in the sync_to_gps example.
>
> In order to debug the problem I decided to time the reading of the 
> gps_time sensor to see if there is a clue why different units miss the 
> PPS edge and lock to a time of the next second.
>
> I was very surprised to find out that it takes between 0.9 to 1.2 
> seconds to read the gps_time sensor.
> This explains exactly why it is difficult to synchronize multiple 
> units to the same time instance because if one unit takes 0.9 seconds 
> to read the sensor and the other unit takes 1.2 seconds to read the 
> sensor then each unit will lock on a different GPS time 1 second apart.
>
> Here is a short software I wrote to time the gps_time sensor reading:
> ---------------------------------------------------------
> #include <uhd/utils/safe_main.hpp>
> #include <uhd/device3.hpp>
> //#include <uhd/usrp/multi_usrp.hpp>
> #include <uhd/types/sensors.hpp>
> #include <boost/program_options.hpp>
> #include <boost/format.hpp>
> #include <chrono>
> #include <iostream>
>
> namespace po = boost::program_options;
>
> int UHD_SAFE_MAIN(int argc, char *argv[]){
>
> std::string args;
>
>     po::options_description desc("Allowed options");
>     desc.add_options()
>         ("help", "help message")
> ("args", po::value<std::string>(&args)->default_value(""), "device 
> address args")
>     ;
>
>     po::variables_map vm;
>     po::store(po::parse_command_line(argc, argv, desc), vm);
>     po::notify(vm);
>
>     //print the help message
>     if (vm.count("help")){
>         std::cout << boost::format("Timinig of gps_time: %s") % desc 
> << std::endl;
>         return ~0;
>     }
>
> uhd::device3::sptr usrp = uhd::device3::make(args);
> //uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
>
> uhd::sensor_value_t gps_time = 
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
> //uhd::sensor_value_t gps_time = usrp->get_mboard_sensor("gps_time", 0);
>
> std::chrono::steady_clock::time_point start_time, end_time;
> std::chrono::duration<double> time_diff; // Default unit for duration 
> is seconds.
>
> for(int ii=0 ; ii<20 ; ii++)
> {
> start_time = std::chrono::steady_clock::now();
> gps_time = 
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
> //gps_time = usrp->get_mboard_sensor("gps_time", 0);
> end_time = std::chrono::steady_clock::now();
> time_diff = end_time - start_time;
>
> std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: " << 
> int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " << 
> (boost::format("%0.9f") % time_diff.count()) << " seconds" << std::endl;
> }
>
>     return 0;
> }
> --------------------------------------------------------------------------------
> Here are the results of one typical run:
> gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 seconds
> gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 seconds
> gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 seconds
> gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 seconds
> gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 seconds
> gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 seconds
> gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 seconds
> gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 seconds
> gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 seconds
> gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 seconds
> gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 seconds
> gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 seconds
> gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 seconds
> gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 seconds
> gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 seconds
> gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 seconds
> gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 seconds
> gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 seconds
> gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 seconds
> gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 seconds
> -----------------------------------------------------------------------------------
> In the code you can find commented out the usual way to access the 
> sensor using multi_usrp and get_mboard_sensor. The results are quite 
> similar.
>
> I wonder if anybody encountered this issue before or addressed it in 
> any way.
> I wonder why it takes so much time to get the value of GPS time when 
> it is a simple parsing of an NMEA message coming from the GPS receiver.
>
> I am trying now various tricks to make the software robust and immune 
> to this phenomenon. I can report my findings further if I succeed to 
> find a workaround if there is any interest.
>
> Can anyone comment on this? Can this be resolved so that the reading 
> of gps_time will be much faster?
> Is there another way to get GPS time faster indirectly? Maybe from 
> parsing NMEA messages ourselves?
>
> Regards,
> Ofer Saferman
>
This probably has to do with the way that particular "sensor" works--the 
NMEA time value is only emitted once per second, and the
   code for that sensor has some heuristic for determining "freshness" 
of the value.

I'll point out that on E310, the system is configured to use GPSD, so 
that the Linux system time across several systems that have all been
   "listening" to GPS for a while will all be synchronized quite well.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
